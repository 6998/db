require('dotenv').config();
const { Pool } = require('pg');
const fs = require('fs');
const FILE_PATH = '../scrapper/output';
const createFileName = fileIndex => `vessel-${fileIndex}.json`;
const pool = new Pool();

const operateOnRow = async row => {
  // console.log(row);
  return await pool
    .query('SELECT NOW()')
    .then(response => console.log(response));
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
      const rows = JSON.parse(listOfVessels);
      asyncForEach(rows, resolve, async row => {
        await operateOnRow(row);
      });
    });
  });
};
const START_INDEX = 2;
const END_INDEX = 4;
const iterateOverAllRows = async () => {
  for (let fileIndex = START_INDEX; fileIndex < END_INDEX; fileIndex++) {
    await operateOnFile(fileIndex);
  }
};

const initTable = async () => await pool.query('SELECT NOW()');

initTable()
  .then(responseFromInit => {
    console.log('responseFromInit', responseFromInit);
  })
  .then(iterateOverAllRows)
  .then(() => console.log('done'));
