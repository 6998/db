import { _200, _500 } from '../utils/responses';
const { Client } = require('pg');

const query = 'SELECT * FROM trip';

export default async (req, res) => {
  const client = new Client();
  await client.connect();
  await client.query(query, (err, results) => {
    if (err) {
      _500({ req, res }, 'bad query');
    } else {
      const { rows } = results;
      _200({ req, res }, rows);
    }
    return client.end();
  });
};
