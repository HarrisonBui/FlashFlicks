import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import { Link } from 'react-router';

const App = ({ children }) => (
  <div>
    <div className="header-container">
      <div className="title-container">
        <Link to={'/'}className="title">FLASH</Link>
        <Link to={'/'}className="title2">FLICKS</Link>
      </div>
      <GreetingContainer />
    </div>
    { children }
  </div>
);

export default App;
