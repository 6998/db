import healthcheak from '../utils/healthcheck';

export default server =>
  new Promise(resolve => {
    server.get('/api', healthcheak);

    resolve(server);
  });
