import React from 'react';
import DatePicker from 'react-datepicker';
import { Form, Col, Button } from 'react-bootstrap';
import 'react-datepicker/dist/react-datepicker.css';

export default class MyForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      startDate: null,
      endDate: null,
      fromCountry: null,
      toCountry: null,
      fromPort: null,
      toPort: null,
      shipId: null,
      isCompleted: false
    };
  }

  renderListOfCountries = i =>
    this.props.listOfCountries.map(country => (
      <option key={`${country.country_name}_${i}`} value={country.country_name}>
        {country.country_name}
      </option>
    ));

  renderListOfPorts = i =>
    this.props.listOfPorts.map(port => (
      <option key={`${port.port_id}_${i}`} value={port.port_name}>
        {port.port_name} ({port.port_id})
      </option>
    ));

  handleChange = (field, value) =>
    this.setState({ [field]: value === 'All' ? null : value });

  requestData = (e, queryIndex) => {
    e.preventDefault();
    const body = {
      ...this.state,
      queryIndex
    };
    this.props.requestData(body);
  };

  render() {
    return (
      <Form>
        <Form.Row>
          <Form.Group as={Col} controlId="formGridState">
            <Form.Label>From Country</Form.Label>
            <Form.Control
              as="select"
              onChange={e => this.handleChange('fromCountry', e.target.value)}
            >
              <option value={null}>All</option>
              {this.renderListOfCountries(1)}
            </Form.Control>
          </Form.Group>

          <Form.Group as={Col} controlId="formGridState">
            <Form.Label>To Country</Form.Label>
            <Form.Control
              as="select"
              onChange={e => this.handleChange('toCountry', e.target.value)}
            >
              <option value={null}>All</option>
              {this.renderListOfCountries(2)}
            </Form.Control>
          </Form.Group>
        </Form.Row>
        <Form.Row>
          <Form.Group as={Col} controlId="formGridState">
            <Form.Label>From Port</Form.Label>
            <Form.Control
              as="select"
              onChange={e => this.handleChange('fromPort', e.target.value)}
            >
              <option>All</option>
              {this.renderListOfPorts(1)}
            </Form.Control>
          </Form.Group>

          <Form.Group as={Col} controlId="formGridState">
            <Form.Label>To Port</Form.Label>
            <Form.Control
              as="select"
              onChange={e => this.handleChange('toPort', e.target.value)}
            >
              <option>All</option>
              {this.renderListOfPorts(2)}
            </Form.Control>
          </Form.Group>
        </Form.Row>

        <Form.Row>
          <Form.Group
            as={Col}
            controlId="formGridCity"
            onChange={e => this.handleChange('shipId', e.target.value)}
          >
            <Form.Label>Ship Id</Form.Label>
            <Form.Control />
          </Form.Group>

          <Form.Group as={Col} controlId="formGridState">
            <Form.Label>Start Date</Form.Label>
            <DatePicker
              selected={this.state.startDate}
              onChange={e => this.handleChange('startDate', e)}
              className="form-control"
            />
          </Form.Group>

          <Form.Group as={Col} controlId="formGridZip">
            <Form.Label>End Date</Form.Label>
            <DatePicker
              selected={this.state.endDate}
              onChange={e => this.handleChange('endDate', e)}
              className="form-control"
            />
          </Form.Group>
        </Form.Row>

        <Form.Group id="formGridCheckbox">
          <Form.Check
            type="checkbox"
            label="Is completed"
            checked={this.state.isCompleted}
            onChange={e => this.handleChange('isCompleted', e.target.checked)}
          />
        </Form.Group>
        <Form.Row>
          <Button
            variant="primary"
            type="submit"
            onClick={e => this.requestData(e, 0)}
          >
            Query 1
          </Button>
          <Button
            variant="primary"
            type="submit"
            onClick={e => this.requestData(e, 1)}
          >
            Query 2
          </Button>
          <Button
            variant="primary"
            type="submit"
            onClick={e => this.requestData(e, 2)}
          >
            Query 3
          </Button>
          <Button
            variant="primary"
            type="submit"
            onClick={e => this.requestData(e, 3)}
          >
            Query 4
          </Button>
        </Form.Row>
      </Form>
    );
  }
}
