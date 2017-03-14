import React from 'react';
import { Link } from 'react-router';

const sessionLinks = () => (
  <nav className="login-signup">
    <Link to="/login" activeClassName="current">Login</Link>&nbsp;
    <Link to="/signup" activeClassName="current">Sign Up</Link>
  </nav>
);

const welcomeGreeting = (currentUser, logout) => (
  <hgroup>
    <h2 className="header-name">Hi, {currentUser.username}!</h2>
    <button className="header-button" onClick={logout}>Log Out</button>
  </hgroup>
);

const Greeting = ({ currentUser, logout}) => (
  currentUser ? welcomeGreeting(currentUser, logout) : sessionLinks()
);

export default Greeting;
