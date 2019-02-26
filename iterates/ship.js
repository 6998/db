require('dotenv').load({ path: '../.env' });
const { Client, types } = require('pg');
const fs = require('fs');
const moment = require('moment');
const FILE_PATH = '/Users/barak/6998/db/scrapper/output';
const createFileName = fileIndex => `vessel-${fileIndex}.json`;
const client = new Client({
  user: 'barak',
  host: 'localhost',
  database: 'ships',
  port: 5432
});

types.setTypeParser(1114, function(stringValue) {
	return stringValue;
});

function randomDate(start, end) {
	return new Date(start.getTime() + Math.random() * (end.getTime() - start.getTime()));
}

const operateOnRow = async port => {
  try {
    const shipId = parseInt(port.mmsi);
    const shipName = port.vessel.trim();

    const lastReport = randomDate(new Date(2012, 0, 1), new Date());
    const date = moment(lastReport).format("YYYY-MM-DD HH:mm:ss");
    const query = `INSERT INTO ship VALUES (${shipId}, \'${shipName}\', \'${date}\')`;
    console.log(query)
    await client.query(query);
    console.log('completed ship ', shipId);
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
          if (row.vessel !== '')
            await operateOnRow(row);
          else console.log('skipping row');
        });
      }
    });
  });
};
const START_INDEX = 3;
const END_INDEX = 199;
const iterateOverAllRows = async () => {
  for (let fileIndex = START_INDEX; fileIndex < END_INDEX; fileIndex++) {
    await operateOnFile(fileIndex);
  }
};

const initTable = async () => await client.query('SELECT * FROM ship'); // TODO: create table
initConnection = async () => await client.connect();

initConnection()
  .then(initTable)
  .then(responseFromInit => {
    responseFromInit.fields.forEach(field => console.log(field.name));
  })
  .then(iterateOverAllRows)
  .then(() => console.log('done'));
