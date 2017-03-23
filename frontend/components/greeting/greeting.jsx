import React from 'react';
import { withRouter } from 'react-router';
import { Link } from 'react-router';
import SessionFormContainer from '../session_form/session_form_container';
import Modal from 'react-modal';
import modalStyle from '../session_form/modal_style';

class Greeting extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      modalOpen: false
    };

    this.closeModal = this.closeModal.bind(this);
    this.conditionalRedirect = this.conditionalRedirect.bind(this);
    this.logout = this.logout.bind(this);
  }

  closeModal() {
  this.setState({
    modalOpen: false
  });
}

conditionalRedirect(path) {
  if (this.props.currentUser) {
    this.props.router.push(path);
  } else {
    this.setState({
      modalOpen: true
    });
  }
}

logout(e) {
  e.preventDefault();
  this.props.logout().then(
    () => this.props.router.push('/')
  );
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
        <a className="header-button" onClick={this.logout}>Log Out</a>
      </hgroup>
    );
  }

  render() {

    let movielistButton = (
      <button className='movielist-button' onClick={() => this.conditionalRedirect('/movielists')}>
        Movie Lists
      </button>
    );

    return(
      <div>
        <div className='welcomeGreeting-container'>
          {movielistButton}

      <Modal isOpen={this.state.modalOpen}
             onRequestClose={this.closeModal}
             className='modal2'
             style={modalStyle}
             contentLabel='Modal'>
        <div className='auth-required'>
          <h3>Members Only</h3>
          <p>Please Login or Signup to view the page.</p>
        </div>
        </Modal>
        {this.props.currentUser ? this.welcomeGreeting(this.props.currentUser, this.props.logout) : this.sessionLinks()}
      </div>
      </div>
      );
  }
}

export default withRouter(Greeting);
