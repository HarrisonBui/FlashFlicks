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
  }

  closeModal() {
  this.setState({
    modalOpen: false
  });
}

componentDidMount() {
  this.props.requestAllMovielists();
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
    let movielistButton = (
      <button onClick={() => this.conditionalRedirect('/movielists')}>
        Movielists
      </button>
    );

    return(
      <div>
        <div className='nav-buttons'>
          {movielistButton}

      <Modal isOpen={this.state.modalOpen}
             onRequestClose={this.closeModal}
             className='modal'
             style={modalStyle}
             contentLabel='Modal'>
        <div className='auth-required'>
          <h3>Access Denied</h3>
          <p>Please log in or sign up to view the page.</p>
        </div>
        </Modal>
      </div>
        {this.props.currentUser ? this.welcomeGreeting(this.props.currentUser, this.props.logout) : this.sessionLinks()}
      </div>
      );
  }
}

export default withRouter(Greeting);
