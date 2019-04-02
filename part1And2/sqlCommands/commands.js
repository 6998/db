require('dotenv').load({ path: '../.env' });

const { Client } = require('pg');

const client = new Client();

const arg1 = process.argv[2];

let query;
if (arg1 === '1') query = 'SELECT * FROM country'; // TODO
if (arg1 === '2') query = ''; // TODO
if (arg1 === '3') query = ''; // TODO

(async () => {
  await client.connect();
  const res = await client.query(query);
  console.log(res);
  await client.end();
})();
