import React, { Component } from 'react';
import logo from './logo.svg';
import SearchButton from './components/SearchButton';
import FormContainer from './containers/FormContainer';
import './spectre.min.css';
import './styles.css';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h1 className="App-title">ViQuote</h1>
        </header>
        <p className="App-intro">
          Input your information for predicted insurance costs!
        </p>
        <div className="container">
          <div className="columns">
            <div className="col-md-9 centered">
              <FormContainer />
            </div>
          </div>
        </div>
        <div className="container">
          <div className="columns">
            <div className="col-md-9 centered">
              <a href="#" className="infoButton">
                Made by Rounak Bera, Nahum Getachew, Raymond Li.
              </a>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default App;
