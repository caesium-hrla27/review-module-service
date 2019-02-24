import React from 'react';
import ReactDOM from 'react-dom';

import ReviewsApp from './components/ReviewsApp.jsx';

setTimeout(() => {
  ReactDOM.render(<ReviewsApp />, document.getElementsByClassName('display-right-review')[0]);
}, 20);