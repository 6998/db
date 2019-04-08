import React from 'react';
import { Form, Col, Button } from 'react-bootstrap';
import 'react-datepicker/dist/react-datepicker.css';

export default class MyForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      tripId: 2345
    };
  }

  onChange = e => this.setState({ tripId: Number(e.target.value) });

  requestData = e => {
    e.preventDefault();
    const body = {
      ...this.state,
      queryIndex: 4
    };
    this.props.requestData(body);
  };

  renderListOfCountries = () =>
    this.props.listOfTrips.map(trip => (
      <option key={trip.trip_id} value={trip.trip_id}>
        {trip.trip_id}
      </option>
    ));

  render() {
    return (
      <Form.Row className="query">
        <Col md={8}>
          Which sailors are on trip
          <Form.Control
            className="inline"
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
