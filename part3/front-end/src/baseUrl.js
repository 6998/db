let url =  'http://localhost:8000/api';
if(process.env.NODE_ENV === 'production')
	url = 'http://35.196.237.72/api';

export default url;
