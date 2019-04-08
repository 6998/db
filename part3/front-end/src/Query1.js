import React from 'react';
import { Form, Col, Button } from 'react-bootstrap';
import 'react-datepicker/dist/react-datepicker.css';

export default class MyForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      num: 4
    };
  }

  onChange = e => this.setState({ num: Number(e.target.value) });

  requestData = e => {
    e.preventDefault();
    const body = {
      ...this.state,
      queryIndex: 1
    };
    this.props.requestData(body);
  };

  render() {

    return (
      <Form.Row className='query'>
        <Col md={8}>
          Get{' '}
          <Form.Control
            className="inline"
            type="number"
            value={this.state.num}
            onChange={this.onChange}
          />
          Most popular ports
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
