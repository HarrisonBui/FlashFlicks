import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import { Link } from 'react-router';

const App = ({ children }) => (
  <div>
    <div className="header-container">
      <Link to={'/'}className="title">FLASH FLICKS</Link>
      <GreetingContainer />
    </div>
    { children }
  </div>
);

export default App;
