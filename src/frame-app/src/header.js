import React, { Component } from 'react';
import logo from './logo.svg';
//import './App.css';

class Header extends Component {
  render() {
    return (
      <div>
        <p>This is the header</p>
      </div>
    );
  }
}

export default Header;

const domContainer = document.querySelector('#header');
ReactDOM.render(e(LikeButton), domContainer);