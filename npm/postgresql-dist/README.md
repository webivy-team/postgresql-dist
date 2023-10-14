# postgresql-dist

Use [postgresql](http://postgresql.org) as an npm module for tighter integration with node apps (e.g. test fixtures).

## Usage

`npm install postgresql-dist`

```javascript
import postgresql from 'postgresql-dist'
import pg from 'pg'

const postgresqlServer = await postgresql()
const client = new pg.Client({
  host: postgresqlServer.socketDir,
  database: 'postgres',
})
await client.connect()
console.log((await client.query('SELECT NOW()')).rows)
await client.end()
await postgresqlServer.stop()
```
