require('dotenv').load({ path: '../.env' });

const { Client } = require('pg');

const client = new Client({
	user: 'bb2762',
	host: '34.73.21.127',
	database: 'proj1part2',
	password: '5293',
	port: 5432
});

const players = [
  {
    name: 'Manuel NEUER',
    captain: true,
    shirt_number: 1,
    position: 'Goalie'
  },
  {
    name: 'Jonas HECTOR',
    captain: false,
    shirt_number: 3,
    position: 'Defender'
  },
  {
    name: 'Mats HUMMELS',
    captain: false,
    shirt_number: 5,
    position: 'Defender'
  },
  {
    name: 'Sami KHEDIRA',
    captain: false,
    shirt_number: 6,
    position: 'Midfield'
  },
  {
    name: 'Toni KROOS',
    captain: false,
    shirt_number: 8,
    position: 'Midfield'
  },
  {
    name: 'Timo WERNER',
    captain: false,
    shirt_number: 9,
    position: 'Forward'
  },
  {
    name: 'Mesut OEZIL',
    captain: false,
    shirt_number: 10,
    position: 'Midfield'
  },
  {
    name: 'Marco REUS',
    captain: false,
    shirt_number: 11,
    position: 'Forward'
  },
  {
    name: 'Leon GORETZKA',
    captain: false,
    shirt_number: 14,
    position: 'Midfield'
  },
  {
    name: 'Niklas SUELE',
    captain: false,
    shirt_number: 15,
    position: 'Defender'
  },
  {
    name: 'Joshua KIMMICH',
    captain: false,
    shirt_number: 18,
    position: 'Defender'
  },
  {
    name: 'Marvin PLATTENHARDT',
    captain: false,
    shirt_number: 2,
    position: 'Defender'
  },
  {
    name: 'Matthias GINTER',
    captain: false,
    shirt_number: 4,
    position: 'Defender'
  },
  {
    name: 'Julian DRAXLER',
    captain: false,
    shirt_number: 7,
    position: 'Midfield'
  },
  {
    name: 'Kevin TRAPP',
    captain: false,
    shirt_number: 12,
    position: 'Goalie'
  },
  {
    name: 'Thomas MUELLER',
    captain: false,
    shirt_number: 13,
    position: 'Midfield'
  },
  {
    name: 'Antonio RUEDIGER',
    captain: false,
    shirt_number: 16,
    position: 'Defender'
  },
  {
    name: 'Sebastian RUDY',
    captain: false,
    shirt_number: 19,
    position: 'Midfield'
  },
  {
    name: 'Julian BRANDT',
    captain: false,
    shirt_number: 20,
    position: 'Midfield'
  },
  {
    name: 'Ilkay GUENDOGAN',
    captain: false,
    shirt_number: 21,
    position: 'Midfield'
  },
  {
    name: 'Marc-Andre TER STEGEN',
    captain: false,
    shirt_number: 22,
    position: 'Goalie'
  },
  {
    name: 'Mario GOMEZ',
    captain: false,
    shirt_number: 23,
    position: 'Forward'
  },
  {
    name: 'Jerome BOATENG',
    captain: false,
    shirt_number: 17,
    position: 'Defender'
  },
  {
    name: 'JO Hyeonwoo',
    captain: false,
    shirt_number: 23,
    position: 'Goalie'
  },
  {
    name: 'LEE Yong',
    captain: false,
    shirt_number: 2,
    position: 'Defender'
  },
  {
    name: 'YUN Youngsun',
    captain: false,
    shirt_number: 5,
    position: 'Defender'
  },
  {
    name: 'SON Heungmin',
    captain: true,
    shirt_number: 7,
    position: 'Forward'
  },
  {
    name: 'KOO Jacheol',
    captain: false,
    shirt_number: 13,
    position: 'Midfield'
  },
  {
    name: 'HONG Chul',
    captain: false,
    shirt_number: 14,
    position: 'Defender'
  },
  {
    name: 'JUNG Wooyoung',
    captain: false,
    shirt_number: 15,
    position: 'Midfield'
  },
  {
    name: 'LEE Jaesung',
    captain: false,
    shirt_number: 17,
    position: 'Midfield'
  },
  {
    name: 'MOON Seonmin',
    captain: false,
    shirt_number: 18,
    position: 'Midfield'
  },
  {
    name: 'KIM Younggwon',
    captain: false,
    shirt_number: 19,
    position: 'Defender'
  },
  {
    name: 'JANG Hyunsoo',
    captain: false,
    shirt_number: 20,
    position: 'Defender'
  },
  {
    name: 'KIM Seunggyu',
    captain: false,
    shirt_number: 1,
    position: 'Goalie'
  },
  {
    name: 'JUNG Seunghyun',
    captain: false,
    shirt_number: 3,
    position: 'Defender'
  },
  {
    name: 'OH Bansuk',
    captain: false,
    shirt_number: 4,
    position: 'Defender'
  },
  {
    name: 'PARK Jooho',
    captain: false,
    shirt_number: 6,
    position: 'Defender'
  },
  {
    name: 'JU Sejong',
    captain: false,
    shirt_number: 8,
    position: 'Midfield'
  },
  {
    name: 'KIM Shinwook',
    captain: false,
    shirt_number: 9,
    position: 'Forward'
  },
  {
    name: 'LEE Seungwoo',
    captain: false,
    shirt_number: 10,
    position: 'Midfield'
  },
  {
    name: 'HWANG Heechan',
    captain: false,
    shirt_number: 11,
    position: 'Forward'
  },
  {
    name: 'KIM Minwoo',
    captain: false,
    shirt_number: 12,
    position: 'Defender'
  },
  {
    name: 'KI Sungyueng',
    captain: false,
    shirt_number: 16,
    position: 'Midfield'
  },
  {
    name: 'KIM Jinhyeon',
    captain: false,
    shirt_number: 21,
    position: 'Goalie'
  },
  {
    name: 'GO Yohan',
    captain: false,
    shirt_number: 22,
    position: 'Defender'
  }
];


const cap = str => {
  const lower = str.toLowerCase();
  return lower.charAt(0).toUpperCase() + lower.slice(1);
};

async function asyncForEach(array, callback) {
  for (let index = 0; index < array.length; index++) {
    await callback(array[index], index, array);
  }
}

const a = async () => {
	await client.connect();
	let index = 0;
	asyncForEach(players, async player => {
		index++
    const firstName = cap(player.name.split(' ')[0]);
    const lastName = cap(player.name.split(' ')[1]);
    const data = [index+18, firstName, lastName];
    const query = 'INSERT INTO bb2762.sailor_crews values ($1, $2, $3)';
    await client
      .query(query, data)
      .catch(e => {
        console.log(e);
      })
      .then(res => {
        console.log(res);
      });
  });
};

a();
