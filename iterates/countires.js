require('dotenv').load({ path: '../.env' });

const { Client } = require('pg');

const client = new Client({
  user: 'barak',
  host: 'localhost',
  database: 'ships',
  port: 5432
});
let countries;
let country_ports;

(async () => {
  await client.connect();
  const selectCountries = `SELECT country_name FROM country`;
  const selectPorts = `SELECT country FROM port`;
  await client.query(selectCountries).then(res => {
    countries = res.rows;
  });

  await client.query(selectPorts).then(res => {
    country_ports = res.rows;
  });

  const fails = [];
  country_ports.forEach(portCountry => {
    const isFind = countries.find(
      country => country.country_name === portCountry.country
    );
    if (!isFind) fails.push(portCountry);
  });

  console.log(fails)
})();
