import { spawn, spawnSync } from "node:child_process";
import { dirname, resolve } from "node:path";
import crypto from 'node:crypto';
import { fileURLToPath } from "node:url";
import { mkdir, appendFile, stat, writeFile } from "node:fs/promises";
import { userInfo } from 'node:os'
import AsyncExitHook from 'async-exit-hook';

/**
 * @typedef {import("node:child_process").SpawnSyncReturns<T>} SpawnSyncReturns
 * @template {Buffer} T
 */

/**
 * @typedef {{password?: string; auth?: string; user?: string; initdbFlags?: string[]; databaseDir?: string; listen_addresses?: string; additionalConfig?: string; }} Config
 * @typedef {{ config: Config; process: import("node:child_process").ChildProcessWithoutNullStreams; socketDir: string; connectionString: string; stop: () => Promise<any>; fastStop: () => Promise<any>; immediateStop: () => Promise<any>; }} Instance
 */

/**
 * @type {Instance[]}
 */
const instances = []

/**
 * @param {string} path 
 * @returns {Promise<boolean>}
 */
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
const getBinPath = () => {
  const __dirname = dirname(fileURLToPath(import.meta.url || ''));
  const distPath = resolve(
    __dirname,
    "../",
    `postgresql-dist-${process.platform}-${process.arch}`,
    'dist',
  );
  const postgresqlDir = distPath
  const binPath = resolve(postgresqlDir, 'bin')
  return binPath
}

/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const clusterdb = (...args) => spawnSync(resolve(getBinPath(), 'clusterdb'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const createdb = (...args) => spawnSync(resolve(getBinPath(), 'createdb'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const createuser = (...args) => spawnSync(resolve(getBinPath(), 'createuser'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const dropdb = (...args) => spawnSync(resolve(getBinPath(), 'dropdb'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const dropuser = (...args) => spawnSync(resolve(getBinPath(), 'dropuser'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const ecpg = (...args) => spawnSync(resolve(getBinPath(), 'ecpg'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const initdb = (...args) => spawnSync(resolve(getBinPath(), 'initdb'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const oid2name = (...args) => spawnSync(resolve(getBinPath(), 'oid2name'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pg_amcheck = (...args) => spawnSync(resolve(getBinPath(), 'pg_amcheck'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pg_archivecleanup = (...args) => spawnSync(resolve(getBinPath(), 'pg_archivecleanup'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pg_basebackup = (...args) => spawnSync(resolve(getBinPath(), 'pg_basebackup'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pgbench = (...args) => spawnSync(resolve(getBinPath(), 'pgbench'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pg_checksums = (...args) => spawnSync(resolve(getBinPath(), 'pg_checksums'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pg_config = (...args) => spawnSync(resolve(getBinPath(), 'pg_config'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pg_controldata = (...args) => spawnSync(resolve(getBinPath(), 'pg_controldata'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pg_ctl = (...args) => spawnSync(resolve(getBinPath(), 'pg_ctl'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pg_dump = (...args) => spawnSync(resolve(getBinPath(), 'pg_dump'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pg_dumpall = (...args) => spawnSync(resolve(getBinPath(), 'pg_dumpall'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pg_isready = (...args) => spawnSync(resolve(getBinPath(), 'pg_isready'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pg_receivewal = (...args) => spawnSync(resolve(getBinPath(), 'pg_receivewal'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pg_recvlogical = (...args) => spawnSync(resolve(getBinPath(), 'pg_recvlogical'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pg_resetwal = (...args) => spawnSync(resolve(getBinPath(), 'pg_resetwal'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pg_restore = (...args) => spawnSync(resolve(getBinPath(), 'pg_restore'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pg_rewind = (...args) => spawnSync(resolve(getBinPath(), 'pg_rewind'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pg_test_fsync = (...args) => spawnSync(resolve(getBinPath(), 'pg_test_fsync'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pg_test_timing = (...args) => spawnSync(resolve(getBinPath(), 'pg_test_timing'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pg_upgrade = (...args) => spawnSync(resolve(getBinPath(), 'pg_upgrade'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pg_verifybackup = (...args) => spawnSync(resolve(getBinPath(), 'pg_verifybackup'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const pg_waldump = (...args) => spawnSync(resolve(getBinPath(), 'pg_waldump'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const psql = (...args) => spawnSync(resolve(getBinPath(), 'psql'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const reindexdb = (...args) => spawnSync(resolve(getBinPath(), 'reindexdb'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const vacuumdb = (...args) => spawnSync(resolve(getBinPath(), 'vacuumdb'), args);
/**
 * @param {string[]} args 
 * @returns {SpawnSyncReturns<Buffer>}
 */
export const vacuumlo = (...args) => spawnSync(resolve(getBinPath(), 'vacuumlo'), args);

/**
 * @param {string} dataDir 
 * @returns {import("node:child_process").ChildProcessWithoutNullStreams}
 */
export const postgres = (dataDir) => spawn(resolve(getBinPath(), 'postgres'), [], {
  env: {
    PGDATA: dataDir
  }
});

/**
 * @param {Config} _config
 */
export default async (_config = {}) => {
  const config = {
    auth: 'peer',
    user: userInfo().username,
    initdbFlags: [],
    databaseDir: resolve(process.cwd(), 'db'),
    listen_addresses: '',
    additionalConfig: '',
    ..._config
  }

  const usePassword = ['scram-sha-256', 'md5', 'password'].includes(config.auth)

  if (!await exists(resolve(config.databaseDir, 'data'))) {
    await mkdir(resolve(config.databaseDir, 'data'), { recursive: true });
    await mkdir(resolve(config.databaseDir, 'socket'), { recursive: true });
    let passwordFile
    if (usePassword) {
      const randomId = crypto.randomBytes(10).toString('hex');
      const password = config.password || crypto.randomBytes(100).toString('hex');
      passwordFile = resolve(config.databaseDir, `pg-password-${randomId}`);
      await writeFile(passwordFile, password + '\n');
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
      `\nunix_socket_directories = '${resolve(config.databaseDir, 'socket').replace(/\\/g, '\\\\')}'`
    );

    await appendFile(
      resolve(config.databaseDir, 'data', 'postgresql.conf'),
      `\nlisten_addresses = '${config.listen_addresses}'`
    );
  }
  await appendFile(
    resolve(config.databaseDir, 'data', 'postgresql.conf'),
    `\n${config.additionalConfig}`
  );

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
    stop: () => new Promise(
      (resolve) => {
        postgresProcess.on('exit', () => resolve(''));
        postgresProcess.kill('SIGTERM');
      }
    ),
    fastStop: () => new Promise(
      (resolve) => {
        postgresProcess.on('exit', () => resolve(''));
        postgresProcess.kill('SIGINT');
      }
    ),
    immediateStop: () => new Promise(
      (resolve) => {
        postgresProcess.on('exit', () => resolve(''));
        postgresProcess.kill('SIGQUIT');
      }
    )
  }

  instances.push(instance)

  return instance
};

/**
 * @param {() => void} done
 */
async function gracefulShutdown(done) {
  await Promise.all([...instances].map((instance) => {
    return instance.fastStop();
  }));
  done();
}
// TODO: Replace with own implementation
AsyncExitHook(gracefulShutdown);
