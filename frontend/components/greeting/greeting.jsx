import React from 'react';
import { Link } from 'react-router';

const sessionLinks = () => (
  <nav className="login-signup">
    <Link to="/login" className="login">Login</Link>&nbsp;
    <Link to="/signup" className="signup">Sign Up</Link>
  </nav>
);

const welcomeGreeting = (currentUser, logout) => (
  <hgroup className="welcomeGreeting-container">
    <h2 className="header-name">Hi, {currentUser.username}!</h2>
    <button className="header-button" onClick={logout}>Log Out</button>
  </hgroup>
);

const Greeting = ({ currentUser, logout}) => (
  currentUser ? welcomeGreeting(currentUser, logout) : sessionLinks()
);

export default Greeting;
