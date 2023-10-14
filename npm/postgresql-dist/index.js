import { spawn, spawnSync } from "node:child_process";
import { dirname, resolve } from "node:path";
import crypto from 'node:crypto';
import { fileURLToPath } from "node:url";
import { mkdir, appendFile, stat } from "node:fs/promises";
import { userInfo } from 'node:os'
import AsyncExitHook from 'async-exit-hook';

const instances = []

const exists = async (path) => {
  try {
    const fileInfo = await stat(path);
    if (!fileInfo.isFile() && !fileInfo.isDirectory()) { return false }
    return true;
  } catch (_e) {
    return false;
  }
};

// Is there an official way to get the path to another packages binary?
const __dirname = dirname(fileURLToPath(import.meta.url));
const distPath = resolve(
  __dirname,
  "../",
  `postgresql-dist-${process.platform}-${process.arch}`,
  'dist',
);

export const postgresqlDir = distPath
export const binPath = resolve(postgresqlDir, 'bin')
export const clusterdb = (...args) => spawnSync(resolve(binPath, 'clusterdb'), args);
export const createdb = (...args) => spawnSync(resolve(binPath, 'createdb'), args);
export const createuser = (...args) => spawnSync(resolve(binPath, 'createuser'), args);
export const dropdb = (...args) => spawnSync(resolve(binPath, 'dropdb'), args);
export const dropuser = (...args) => spawnSync(resolve(binPath, 'dropuser'), args);
export const ecpg = (...args) => spawnSync(resolve(binPath, 'ecpg'), args);
export const initdb = (...args) => spawnSync(resolve(binPath, 'initdb'), args);
export const oid2name = (...args) => spawnSync(resolve(binPath, 'oid2name'), args);
export const pg_amcheck = (...args) => spawnSync(resolve(binPath, 'pg_amcheck'), args);
export const pg_archivecleanup = (...args) => spawnSync(resolve(binPath, 'pg_archivecleanup'), args);
export const pg_basebackup = (...args) => spawnSync(resolve(binPath, 'pg_basebackup'), args);
export const pgbench = (...args) => spawnSync(resolve(binPath, 'pgbench'), args);
export const pg_checksums = (...args) => spawnSync(resolve(binPath, 'pg_checksums'), args);
export const pg_config = (...args) => spawnSync(resolve(binPath, 'pg_config'), args);
export const pg_controldata = (...args) => spawnSync(resolve(binPath, 'pg_controldata'), args);
export const pg_ctl = (...args) => spawnSync(resolve(binPath, 'pg_ctl'), args);
export const pg_dump = (...args) => spawnSync(resolve(binPath, 'pg_dump'), args);
export const pg_dumpall = (...args) => spawnSync(resolve(binPath, 'pg_dumpall'), args);
export const pg_isready = (...args) => spawnSync(resolve(binPath, 'pg_isready'), args);
export const pg_receivewal = (...args) => spawnSync(resolve(binPath, 'pg_receivewal'), args);
export const pg_recvlogical = (...args) => spawnSync(resolve(binPath, 'pg_recvlogical'), args);
export const pg_resetwal = (...args) => spawnSync(resolve(binPath, 'pg_resetwal'), args);
export const pg_restore = (...args) => spawnSync(resolve(binPath, 'pg_restore'), args);
export const pg_rewind = (...args) => spawnSync(resolve(binPath, 'pg_rewind'), args);
export const pg_test_fsync = (...args) => spawnSync(resolve(binPath, 'pg_test_fsync'), args);
export const pg_test_timing = (...args) => spawnSync(resolve(binPath, 'pg_test_timing'), args);
export const pg_upgrade = (...args) => spawnSync(resolve(binPath, 'pg_upgrade'), args);
export const pg_verifybackup = (...args) => spawnSync(resolve(binPath, 'pg_verifybackup'), args);
export const pg_waldump = (...args) => spawnSync(resolve(binPath, 'pg_waldump'), args);
export const psql = (...args) => spawnSync(resolve(binPath, 'psql'), args);
export const reindexdb = (...args) => spawnSync(resolve(binPath, 'reindexdb'), args);
export const vacuumdb = (...args) => spawnSync(resolve(binPath, 'vacuumdb'), args);
export const vacuumlo = (...args) => spawnSync(resolve(binPath, 'vacuumlo'), args);

export const postgres = (dataDir) => spawn(resolve(binPath, 'postgres'), [], {
  env: {
    PGDATA: dataDir
  }
});

export default async (_config = {}) => {
  const config = {
    auth: 'peer',
    user: userInfo().username,
    initdbFlags: [],
    databaseDir: resolve(process.cwd(), 'db'),
    listen_addresses: '',
    ..._config
  }

  const usePassword = ['scram-sha-256', 'md5', 'password'].includes(config.auth)

  if (!await exists(resolve(config.databaseDir, 'data'))) {
    await mkdir(resolve(config.databaseDir, 'data'), { recursive: true });
    await mkdir(resolve(config.databaseDir, 'socket'), { recursive: true });
    if (usePassword) {
      const randomId = crypto.randomBytes(6).readUIntLE(0, 6).toString(64);
      const password = config.password || crypto.randomBytes(6).readUIntLE(0, 6).toString(64);
      const passwordFile = resolve(config.databaseDir, `pg-password-${randomId}`);
      await fs.writeFile(passwordFile, password + '\n');
    }

    const initProc = await initdb(
      `--pgdata=${resolve(config.databaseDir, 'data')}`,
      `--auth=${config.auth}`,
      `--username=${config.user}`,
      ...(usePassword ? [`--pwfile=${passwordFile}`] : []),
      ...config.initdbFlags,
    )
    const initOut = initProc.stdout.toString()
    const initErr = initProc.stderr.toString()
    if (initOut) console.log(initOut)
    if (initErr) console.error(initErr)

    await appendFile(
      resolve(config.databaseDir, 'data', 'postgresql.conf'),
      `\nunix_socket_directories = '${resolve(config.databaseDir, 'socket')}'`
    );

    await appendFile(
      resolve(config.databaseDir, 'data', 'postgresql.conf'),
      `\nlisten_addresses = '${config.listen_addresses}'`
    );
  }

  const postgresProcess = await new Promise((pResolve, reject) => {
    const postgresProcess = postgres(resolve(config.databaseDir, 'data'))
    postgresProcess.stderr?.on('data', (chunk) => {
      const message = chunk.toString('utf-8');
      console.error(message);
      if (message.includes('database system is ready to accept connections')) {
        pResolve(postgresProcess);
      }
    });
    postgresProcess.stdout.on("data", (data) => console.log(data.toString()));
  });

  const instance = {
    config,
    process: postgresProcess,
    socketDir: resolve(config.databaseDir, 'socket'),
    connectionString: '',
    stop: () => new Promise((resolve) => {
      postgresProcess.on('exit', () => resolve());
      postgresProcess.kill('SIGTERM');
    })
  }

  instances.push(instance)

  return instance
};

async function gracefulShutdown(done) {
  await Promise.all([...instances].map((instance) => {
    return instance.stop();
  }));
  done();
}

AsyncExitHook(gracefulShutdown);
