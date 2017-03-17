import React from 'react';
import { Link } from 'react-router';
import SessionFormContainer from '../session_form/session_form_container';

class Greeting extends React.Component {
  constructor(props) {
    super(props);
  }

  sessionLinks() {
    return(
      <SessionFormContainer />
    );
  }

  welcomeGreeting(currentUser, logout) {
    return(
      <hgroup className="welcomeGreeting-container">
        <h2 className="header-name">Hi, {currentUser.username}!</h2>
        <a className="header-button" onClick={logout}>Log Out</a>
      </hgroup>
    );
  }

  render() {
    return(
      <div>
        {this.props.currentUser ? this.welcomeGreeting(this.props.currentUser, this.props.logout) : this.sessionLinks()}
      </div>
    );
  }
}

export default Greeting;
