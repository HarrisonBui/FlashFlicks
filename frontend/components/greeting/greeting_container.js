import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import { requestAllMovielists } from '../../actions/movielist_actions';
import Greeting from './greeting';


const mapStateToProps = ({session}) => ({
  currentUser: session.currentUser
});

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  requestAllMovielists: () => dispatch(requestAllMovielists())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Greeting);
