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

## Credits

- Based on <https://github.com/zonkyio/embedded-postgres-binaries>
  - With added webauthn extension from <https://github.com/truthly/pg-webauthn> (SQL only)
    - Based on
      - <https://github.com/truthly/pg-cbor> (SQL only)
      - <https://github.com/ameensol/pg-ecdsa>
        - Based on
          - <https://github.com/kmackay/micro-ecc>
  - RUM indexes from https://github.com/postgrespro/rum

## TODO

- [ ] Enable macos/windows to use the webauthn extension

## Helper files for build

- config.guess from <https://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=b8ee5f79949d1d40e8820a774d813660e1be52d3>
- config.sub from <https://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=b8ee5f79949d1d40e8820a774d813660e1be52d3>
