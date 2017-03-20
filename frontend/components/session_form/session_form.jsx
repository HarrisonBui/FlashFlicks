import React from 'react';
import { Link, withRouter } from 'react-router';
import Modal from 'react-modal';
import ModalStyle from './modal_style';

class SessionForm extends React.Component {
	constructor(props) {
		super(props);
		this.state = {
			username: "",
			password: "",
			modalOpen: false,
			modalType: 'login',
		};
		this.handleSubmit = this.handleSubmit.bind(this);
		this.openModal = this.openModal.bind(this);
		this.closeModal = this.closeModal.bind(this);
		this.handleGuestLogin = this.handleGuestLogin.bind(this);
	}

	componentDidUpdate() {
		this.redirectIfLoggedIn();
	}

	redirectIfLoggedIn() {
		if (this.props.loggedIn) {
			this.props.router.push("/");
		}
	}

	update(field) {
		return e => this.setState({
			[field]: e.currentTarget.value
		});
	}

	handleSubmit(e) {
		e.preventDefault();
		const user = this.state;
		if (this.state.modalType === 'login') {
			this.props.login({user});
		} else {
			this.props.signup({user});
		}
	}

	handleGuestLogin(e) {
		e.preventDefault();
		this.state.username = "Guest";
		this.state.password = "BarryAllenGuest";
		const user = this.state;
		this.props.login({user});
	}

	navLink() {
		if (this.state.modalType === "login") {
			return <a className="navlink" onClick={this.openModal.bind(this, 'signup')}>Sign Up</a>;
		} else {
			return <a className="navlink" onClick={this.openModal.bind(this, 'login')}>Login</a>;
		}
	}

	renderErrors() {
		return(
			<ul className="errors">
				{this.props.errors.map((error, i) => {
					this.setState.errors = true;
					return(<a key={`error-${i}`}>
						{error}
					</a>);
				})}
			</ul>
		);
	}

	openModal(modalType) {
				this.props.errors[0] = "";
		this.setState({
			modalOpen: true,
			modalType
		});
	}

	closeModal() {
		this.props.errors[0] = "";
		this.setState({modalOpen: false});
	}

	render() {
		return (
			<div >
				<nav className="login-signup">
					<a className="login" onClick={this.openModal.bind(this, 'login')}>Login</a>
					&nbsp;&nbsp;
					<a className="signup" onClick={this.openModal.bind(this, 'signup')}>Sign up</a>
				</nav>
				<Modal
					contentLabel="Modal"
					className="modal"
					isOpen={this.state.modalOpen}
					onRequestClose={this.closeModal}
					style={ModalStyle}>
					<br/>
					{this.state.modalType}
					<form onSubmit={this.handleSubmit} >
							{this.renderErrors()}
						<div className="login-form">
							<br/>
							<label>
								<input type="text"
									value={this.state.username}
									onChange={this.update("username")}
									className="login-input"
									placeholder={'Username'}/>
							</label>
							<br/>
							<label>
								<input type="password"
									value={this.state.password}
									onChange={this.update("password")}
									className="login-input"
									placeholder={'Password'}/>
							</label>
							<br/>
							<input className="submit" type="submit" value="Submit" />&nbsp;
							<br/>
							{this.navLink()}or
							<a className="guest" onClick={this.handleGuestLogin}>Guest</a>
						</div>
					</form>
				</Modal>
			</div>
		);
	}

}

export default withRouter(SessionForm);
