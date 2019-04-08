import React from 'react';
import { Form, Col, Button } from 'react-bootstrap';
import 'react-datepicker/dist/react-datepicker.css';

export default class MyForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      country: 'Sweden'
    };
  }

  onChange = e => this.setState({ country: e.target.value });

  requestData = e => {
    e.preventDefault();
    const body = {
      ...this.state,
      queryIndex: 3
    };
    this.props.requestData(body);
  };

  renderListOfCountries = () =>
    this.props.listOfCountries.map(country => (
      <option key={country.country_name} value={country.country_name}>
        {country.country_name}
      </option>
    ));

  render() {
    return (
      <Form.Row className='query'>
        <Col md={8}>
          Which trips are going to
          <Form.Control
            className="inline long"
            as="select"
            onChange={this.onChange}
            value={this.state.country}
          >
            {this.renderListOfCountries()}
          </Form.Control>
        </Col>
        <Col md={4}>
          <Button variant="primary" type="submit" onClick={this.requestData}>
            Submit
          </Button>
        </Col>
      </Form.Row>
    );
  }
}
