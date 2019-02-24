import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
//import App from './App';
import * as serviceWorker from './serviceWorker';

ReactDOM.render(<p>This is the header</p>, document.getElementById('header'));
ReactDOM.render(<p>Welcome to my microservice architecture</p>, document.getElementById('root'));
ReactDOM.render(<p>This is the footer</p>, document.getElementById('footer'));

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: http://bit.ly/CRA-PWA
serviceWorker.unregister();
