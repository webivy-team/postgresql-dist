import assert from "node:assert";
import test from "node:test";
import postgresql from 'postgresql-dist'
import pg from 'pg'

test("Basic query", async () => {
  const postgresqlServer = await postgresql()
  const client = new pg.Client({
    host: postgresqlServer.socketDir,
    database: 'postgres',
  })
  await client.connect()
  assert((await client.query('SELECT NOW()')).rows[0].now)
  await client.end()
  await postgresqlServer.stop()
});
