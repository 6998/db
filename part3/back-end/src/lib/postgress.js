const { Client } = require('pg');

export const pgClient = new Client();

export default server =>
  new Promise(async (resolve, reject) => {
  	console.log("init start")
		try {
			await pgClient.connect();
			resolve(server)
		} catch (e) {
			reject("connect to postgress db")
		}
  	console.log("init end")
		resolve(server)
  });
