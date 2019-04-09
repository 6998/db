import React, { Component } from 'react';
import './App.css';
import axios from 'axios';
import Table from './Table';
import Query1 from './Query1';
import Query2 from './Query2';
import Query3 from './Query3';
import Query4 from './Query4';
import baseUrl from "./baseUrl";
console.log(process.env)

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
      .get(baseUrl + '/list-of-countries')
      .then(response => this.setState({ listOfCountries: response.data }));
  };

  loadPorts = () => {
    axios
      .get(baseUrl + '/list-of-ports')
      .then(response => this.setState({ listOfPorts: response.data }));
  };

  loadCompanies = () => {
    axios
      .get(baseUrl + '/list-of-companies')
      .then(response => this.setState({ listOfCompanies: response.data }));
  };

  loadTrips = () => {
    axios
      .get(baseUrl + '/list-of-trips')
      .then(response => this.setState({ listOfTrips: response.data }));
  };

  requestData = body => {
    axios.post(baseUrl + '/queries', body).then(response =>
      this.setState({
        fields: response.data.fields,
        data: response.data.rows
      })
    );
  };

  loadQuery() {
    axios
      .post(baseUrl + '/query', { query: 'SELECT * FROM trip' })
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
