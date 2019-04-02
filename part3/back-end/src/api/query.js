import { _200, _500 } from '../utils/responses';
const { Client } = require('pg');

export default async (req, res) => {
  console.log(req.body);
  const query = req.body.query;
  if (query) {
    const client = new Client();
    await client.connect();
    await client.query(query, (err, results) => {
      if (err) {
        _500({ req, res }, 'bad query');
      } else {
        const { rows } = results;
        _200({ req, res }, rows);
        console.log(results);
      }
      return client.end();
    });
  } else {
    return _500({ req, res }, 'no query');
  }
};
