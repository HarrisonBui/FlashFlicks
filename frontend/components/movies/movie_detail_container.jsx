import { connect } from 'react-redux';
import MovieDetail from './movie_detail';
import { requestMovieDetail } from '../../actions/movie_actions';

const mapStateToProps = (state, ownProps) => ({
  movie: state.movieDetail
});

const mapDispatchToProps = dispatch => ({
  requestMovieDetail: (movie) => dispatch(requestMovieDetail(movie))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(MovieDetail);
