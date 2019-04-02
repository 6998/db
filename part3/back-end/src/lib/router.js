import healthcheak from '../utils/healthcheck';
import query from '../api/query';

export default server =>
  new Promise(resolve => {
    server.get('/api', healthcheak);
    server.post('/api/query', query);

    resolve(server);
  });
