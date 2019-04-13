import _ from 'lodash';

const a =
  'SELECT ' +
  '  p.port_country ' +
  'FROM ' +
  '  port AS p ' +
  'WHERE' +
  '  ( p.port_id IN (' +
  '    SELECT' +
  '      t.from_port FROM trip AS t ' +
  '    GROUP BY' +
  '      t.from_port ' +
  '    ORDER BY COUNT(*) DESC ' +
  '    LIMIT $1 ' +
  '    )' +
  '  )';

const b =
  "ELECT DISTINCT" +
  "s.ship_name"+
"FROM"+ 
  +"ship_works_for as s"+
"INNER JOIN"+ 
  "company as c on s.company_id = c.company_id"+
"WHERE c.name = $1"

const c =
  "SELECT"+"trip_id"+ 	"FROM trip Inner join ship_works_for ON trip.ship_id=ship_works_for.ship_id Where to_country=$1";

const d =
  '' +
  'SELECT ' +
  '  sc.first_name, sc.Last_name, c.name, t.trip_id ' +
  'FROM ' +
  '  sailor_crews as sc ' +
  'INNER JOIN ' +
  '  trip as t ON sc.current_trip = t.trip_id ' +
  '  ' +
  'INNER JOIN ' +
  '  ship_works_for as s ON s.ship_id = t.ship_id ' +
  'INNER JOIN ' +
  '  company as c ON c.company_id = s.company_id ' +
  'WHERE ' +
  '  t.trip_id = $1';

const queries = [a, b, c, d];

export const selectQuery = body => {
  const { queryIndex } = body;
  const query = queries[queryIndex - 1];
  let values;

  if (queryIndex === 1) {
    values = Object.values(_.pick(body, ['num']));
  }

	if (queryIndex === 2) {
		values = Object.values(_.pick(body, ['companyId']));
	}

	if (queryIndex === 3) {
		values = Object.values(_.pick(body, ['country']));
	}

	if (queryIndex === 4) {
		values = Object.values(_.pick(body, ['tripId']));
	}



  return { query, values };
};
