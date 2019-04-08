import express from 'express';
import cors from 'cors';
import bodyParser from 'body-parser';
const server = express();

const startServer = server => {
  if (!server) throw 'Need Server object to start';

  const port = process.env.PORT;
  server.listen(port, () => {
    console.log(`starting server on port ${port}`);
  });
};

const initExpress = server => {
  return new Promise(resolve => {
    server.use(cors());
    server.use(bodyParser.json());
    server.use(bodyParser.urlencoded({ extended: true }));
    return resolve(server);
  });
};

export { server, startServer, initExpress };
