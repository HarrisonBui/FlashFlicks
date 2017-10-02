import React from 'react';
import MoiveIndexContainer from '../movies/movie_index_container';

class Show extends React.Component {
  constructor(props) {
    super(props);
  }

  componentWillMount() {
    this.props.requestMovies().then(() => this.props.requestAllMovielists());
  }

  componentWillReceiveProps() {
    this.setState({});
  }

  render() {
    return(
      <div className='show'>
        <div className='parent'>
          <div className="middle-img">
            <text className='heading-title'>Catalogue and Review Movies</text>
          </div>
        </div>
        <MoiveIndexContainer movies={this.props.movies}
                            title=''/>
      </div>
    );
  }
}

export default Show;
