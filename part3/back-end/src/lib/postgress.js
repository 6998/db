const { Client } = require('pg');

export const pgClient = new Client();

export default server =>
  new Promise(async (resolve, reject) => {
    console.log('init start');
    try {
      await pgClient.connect();
      pgClient.query('SELECT NOW()', (err, res) => {
        if (err) throw err;
        console.log('PG Connection success');
        pgClient.end();
      });
      resolve(server);
    } catch (e) {
      reject('connect to postgress db', e);
    }
    console.log('init end');
    resolve(server);
  });
