import React, { Component } from 'react';
import './App.css';
import axios from 'axios';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      query: null
    };
  }
  textChange = event => {
    this.setState({ query: event.target.value });
  };
  submit = () => {
    const { query } = this.state;
    axios.post('/api/query', { query }).then(response => {
      this.setState({ data: JSON.stringify(response.data) });
    }).catch(() => {
			this.setState({ data: "bad query" });
		});
  };
  render() {
    return (
      <div className="App">
        <textarea onChange={this.textChange} />
        <button onClick={this.submit}>submit</button>
        {this.state.data}
      </div>
    );
  }
}

export default App;
