import React, {Component} from 'react';

export default class SearchButton extends Component {
  constructor(props){
    super(props);
    this.state = {buttonText: "Query API!"};
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick() {
    var url = "https://v3v10.vitechinc.com/solr/v_participant/select?indent=on&wt=json";
    var proxyUrl = 'https://cors-anywhere.herokuapp.com/';
    fetch(proxyUrl + url)
      .then(blob => blob.json())
      .then(data => {
        console.log(data);
        document.querySelector(".Plans").innerHTML = JSON.stringify(data, null, 2);
        return data;
      }).catch(e => {
        console.log(e);
        return e;
      });
  }

  render() {
    return (
      <button className="searchButton" onClick={this.handleClick}>
        {this.state.buttonText}
      </button>
    );
  }
}
