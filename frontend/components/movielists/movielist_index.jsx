import React from 'react';
import Modal from 'react-modal';
import MovieIndexContainer from '../movies/movie_index_container';
import modalStyle from '../session_form/modal_style';

class Movielists extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      selectedList: 0,
      selectedListTitle: 'Watched',
      shownMovies: [],
      modalOpen: false,
      newListTitle: ''
    };

    this.selectList = this.selectList.bind(this);
    this.deleteList = this.deleteList.bind(this);
    this.handleInput = this.handleInput.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }


  componentWillMount() {
    this.props.requestMovies()
    .then(() => this.props.requestAllMovielists())
    .then(() => {
      if(this.props.movielists){

          const shownMovies = this.props.movielists[0].movies.map(id => (
            this.props.movies[id]
          ));
          this.setState({shownMovies});
      }
      if(this.props.movielists){
        let selectedList = (this.state.selectedList >= this.props.movielists.length) ?
        this.state.selectedList - 1 : this.state.selectedList;
        const shownMovies = this.props.movielists[selectedList].movies.map(id => (
          this.props.movies[id]
        ));
        this.setState({
          shownMovies,
          selectedList,
          selectedListTitle: this.props.movielists[selectedList].title
        });
      }
    });
  }

  selectList(idx) {
    const shownMovielist = this.props.movielists[idx];
    const shownMovies = shownMovielist.movies.map(id => (
      this.props.movies[id]
    ));

    this.setState({
      selectedList: idx,
      selectedListTitle: shownMovielist.title,
      shownMovies
    });
  }

  deleteList() {
    this.props.deleteMovielist(
      this.props.movielists[this.state.selectedList]
    );
  }

  handleInput(e) {
    this.setState({newListTitle: e.target.value});
  }

  handleSubmit(e) {
    e.preventDefault();
    const newList = {
      title: this.state.newListTitle,
      user_id: this.props.currentUser.id
    };
    this.props.createMovielist(newList).then(() =>
      this.setState({
        modalOpen: false,
        newListTitle: ''
      })
    );
  }

  render() {
    const deleteButton =(
      <button className='delete-button' title='delete list'
              onClick={this.deleteList}>
      x</button>
    );

    const movielists = this.props.movielists.map((movielist, idx) => (
      <div key={idx}
           onClick={() => this.selectList(idx)}
           className='movielist'>
        <h5>{movielist.title}</h5>
        {this.state.selectedList === idx &&  idx !== 0 && idx !== 1 ?
         deleteButton : ''}
      </div>
    ));
    movielists.push(
      <div className='movielist'
           onClick={() => this.setState({modalOpen: true})}
           key={'add'}>
        <h5 className='add-button'>add movielist</h5>
      </div>
    );


    return(
      <div className='movielist-view'>
        <div className="selector-list">
          <MovieIndexContainer movies={this.state.shownMovies}
            title={this.state.selectedListTitle}
            movielist={this.props.movielists[this.state.selectedList]}/>
        </div>
        <div className='movielist-sidebar'>
          <h4 className='movielist-title'>My Movielists</h4>
          <ul className='movielist-list'>
            {movielists}
          </ul>
        </div>
        <Modal isOpen={this.state.modalOpen}
               onRequestClose={() => this.setState({modalOpen: false})}
               className='modal'
               style={modalStyle}
               contentLabel='Modal'>
          <h4 className='movielist-form-title'>New Movie List</h4>

          <form className='movielist-form'>
            <input placeholder='Title'
                   onChange={this.handleInput}
                   value={this.state.newListTitle}
                   className='new-movielist-form'></input>
                 <button onClick={this.handleSubmit}>Create New List</button>
          </form>
        </Modal>
      </div>
    );
  }
}

export default Movielists;
