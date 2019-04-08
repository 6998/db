import React, { Component } from 'react';
import './App.css';
import axios from 'axios';
import Table from './Table';
import Query1 from './Query1';
import Query2 from './Query2';
import Query3 from './Query3';
import Query4 from './Query4';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      data: [],
      fields: [],
      listOfCountries: [],
      listOfPorts: [],
      listOfCompanies: [],
      listOfTrips: []
    };
    this.loadCountries();
    this.loadPorts();
    this.loadQuery();
    this.loadCompanies();
    this.loadTrips();
  }

  loadCountries = () => {
    axios
      .get('http://localhost:8000/api/list-of-countries')
      .then(response => this.setState({ listOfCountries: response.data }));
  };

  loadPorts = () => {
    axios
      .get('http://localhost:8000/api/list-of-ports')
      .then(response => this.setState({ listOfPorts: response.data }));
  };

  loadCompanies = () => {
    axios
      .get('http://localhost:8000/api/list-of-companies')
      .then(response => this.setState({ listOfCompanies: response.data }));
  };

  loadTrips = () => {
    axios
      .get('http://localhost:8000/api/list-of-trips')
      .then(response => this.setState({ listOfTrips: response.data }));
  };

  requestData = body => {
    axios.post('http://localhost:8000/api/queries', body).then(response =>
      this.setState({
        fields: response.data.fields,
        data: response.data.rows
      })
    );
  };

  loadQuery() {
    axios
      .post('http://localhost:8000/api/query', { query: 'SELECT * FROM trip' })
      .then(response =>
        this.setState({
          fields: response.data.fields,
          data: response.data.rows
        })
      );
  }

  renderQueries() {
    return (
      <div className="queries">
        <Query1 requestData={this.requestData} />
        <Query2
          requestData={this.requestData}
          listOfCompanies={this.state.listOfCompanies}
        />
        <Query3
          requestData={this.requestData}
          listOfCountries={this.state.listOfCountries}
        />
        <Query4
          requestData={this.requestData}
					listOfTrips={this.state.listOfTrips}
        />
      </div>
    );
  }

  table = () => Table(this.state.data, this.state.fields);

  render() {
    return (
      <React.Fragment>
        {this.renderQueries()}
        {this.table()}
      </React.Fragment>
    );
  }
}

export default App;
