import React from 'react';
import MoiveIndexContainer from '../movies/movie_index_container';


class Show extends React.Component {
  constructor(props) {
    super(props);
  }

  

  componentWillMount() {
    this.props.requestMovies();
  }

  componentWillReceiveProps() {
    this.setState({});
  }

  render() {
    return(
      <div className='show'>
        <MoiveIndexContainer movies={this.props.movies}
                            title='Show Movies'/>
      </div>
    );
  }
}

export default Show;
