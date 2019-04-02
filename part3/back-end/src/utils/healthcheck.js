import {_200} from './responses';
const { Client } = require('pg');


export default async(req, res) => {
	const client = new Client()
	await client.connect();
	const re = await client.query("SELECT NOW()")
	_200({ req, res }, re);
}