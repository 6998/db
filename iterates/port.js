require('dotenv').load({ path: '../.env' });
const { Client } = require('pg');
const fs = require('fs');
const FILE_PATH = '/Users/barak/6998/db/scrapper/output';
const createFileName = fileIndex => `ports-${fileIndex}.json`;
const client = new Client({
  user: 'barak',
  host: 'localhost',
  database: 'ships',
  port: 5432
});

const operateOnRow = async port => {
  try {
    const portId = parseInt(port.id);
    const portName = port.location.trim();
    const country = port.country.trim();
    await client.query(
      `INSERT INTO port VALUES (${portId}, \'${portName}\', \'${country}\')`
    ); //
    console.log('completed port ', portId);
  } catch (e) {
    console.log(e);
  }
};

async function asyncForEach(array, resolve, callback) {
  for (let index = 0; index < array.length; index++) {
    await callback(array[index], index, array);
  }
  resolve();
}

const operateOnFile = async fileIndex => {
  return await new Promise(resolve => {
    const pathToFile = `${FILE_PATH}/${createFileName(fileIndex)}`;
    console.log('operate on file ', pathToFile);

    fs.readFile(pathToFile, 'utf8', (err, listOfVessels) => {
      if (err) {
        console.error('error', err);
      } else {
        const rows = JSON.parse(listOfVessels);
        asyncForEach(rows, resolve, async row => {
          if (row.id !== '' && row.location !== '' && row.country !== '')
            await operateOnRow(row);
          else console.log('skipping row');
        });
      }
    });
  });
};
const START_INDEX = 1;
const END_INDEX = 14;
const iterateOverAllRows = async () => {
  for (let fileIndex = START_INDEX; fileIndex < END_INDEX; fileIndex++) {
    await operateOnFile(fileIndex);
  }
};

const initTable = async () => await client.query('SELECT * FROM port'); // TODO: create table
initConnection = async () => await client.connect();

initConnection()
  .then(initTable)
  .then(responseFromInit => {
    responseFromInit.fields.forEach(field => console.log(field.name));
  })
  .then(iterateOverAllRows)
  .then(() => console.log('done'));
