import React, { Component } from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import './header.js';
import Header from './header'; 
import Footer from './footer';
import * as serviceWorker from './serviceWorker';


ReactDOM.render(<p>Welcome to my microservice architecture</p>, document.getElementById('root'));
ReactDOM.render(<p>This is the footer</p>, document.getElementById('footer'));


const header = React.createElement;
const headerContainer = document.querySelector('#header');
ReactDOM.render(header(Header), headerContainer);


const footer = React.createElement;
const footcontainer = document.querySelector('#footer');
ReactDOM.render(footer(Footer), footcontainer);


// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: http://bit.ly/CRA-PWA
serviceWorker.unregister();
