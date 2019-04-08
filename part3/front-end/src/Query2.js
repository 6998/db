import React from 'react';
import { Form, Col, Button } from 'react-bootstrap';
import 'react-datepicker/dist/react-datepicker.css';

export default class MyForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      companyId: 0
    };
  }

  onChange = e => this.setState({ companyId: Number(e.target.value) });

  requestData = e => {
    e.preventDefault();
    const body = {
      ...this.state,
      queryIndex: 2
    };
    this.props.requestData(body);
  };

  renderListOfCompanies = () =>
    this.props.listOfCompanies.map(company => (
      <option key={company.company_id} value={company.company_id}>
        {company.name} ({company.company_id})
      </option>
    ));

  render() {
    return (
      <Form.Row className="query">
        <Col md={8}>
          How many ships are working for
          <Form.Control
            className="inline long"
            as="select"
            onChange={this.onChange}
          >
            {this.renderListOfCompanies()}
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
