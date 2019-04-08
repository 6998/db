import healthcheak from '../utils/healthcheck';
import ListOfCountries from '../api/ListOfCountries';
import ListOfPorts from '../api/ListOfPorts';
import ListOfCompanies from '../api/ListOfCompanies';
import ListOfTrips from '../api/ListOfTrips';
import query from '../api/query';
import Queries from '../api/Queries';

export default server =>
  new Promise(resolve => {
    server.get('/api', healthcheak);

    server.get('/api/list-of-countries', ListOfCountries);
    server.get('/api/list-of-ports', ListOfPorts);
    server.get('/api/list-of-companies', ListOfCompanies);
    server.get('/api/list-of-trips', ListOfTrips);

    server.post('/api/queries', Queries);
		server.post('/api/query', query);


		resolve(server);
  });
