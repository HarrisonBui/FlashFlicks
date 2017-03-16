import React from 'react';
import GreetingContainer from './greeting/greeting_container';

const App = ({ children }) => (
  <div>
    <div className="header-container">
      <h1 className="title">FLASH FLICKS</h1>
      <GreetingContainer />
    </div>
    { children }
  </div>
);

export default App;
