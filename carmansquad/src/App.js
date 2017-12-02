import React, { Component } from 'react';
import logo from './logo.svg';
import SearchButton from './components/SearchButton';
import FormContainer from './containers/FormContainer';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h1 className="App-title">AutoPlan</h1>
        </header>
        <p className="App-intro">
          Input your information for predicted insurance costs!
        </p>
        <FormContainer />
        <SearchButton />
        <div className="Plans">
          This is where your plan prices will show up!
        </div>
      </div>
    );
  }
}

export default App;
