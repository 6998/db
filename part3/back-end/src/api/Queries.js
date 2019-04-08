import { _200, _500 } from '../utils/responses';
import { selectQuery } from '../utils/SQLQueries';

const { Client } = require('pg');

export default async (req, res) => {
  const { query, values } = selectQuery(req.body);

  console.log("selectQuery(req.body)", selectQuery(req.body))

  if (query) {
    const client = new Client();
    await client.connect();
    await client.query(query, values, (err, results) => {
      if (err) {
        _500({ req, res }, 'bad query');
      } else {
        const { rows, fields } = results;
        _200({ req, res }, { rows, fields });
      }
      return client.end();
    });
  } else {
    return _500({ req, res }, 'no query');
  }
};
