import { server, startServer, initExpress } from './lib/express';
import initPostgress from './lib/postgress';
import routes from './lib/router';
require('dotenv').config();

initExpress(server)
  // .then(initPostgress)
  .then(routes)
  .then(startServer);
