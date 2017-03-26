import React from 'react';
import { Provider } from 'react-redux';

import { Router, Route, IndexRoute, hashHistory } from 'react-router';

import App from './App';
import ShowContainer from './show/show_container';
import MovielistIndexContainer from './movielists/movielist_index_container';
import SessionFormContainer from './session_form/session_form_container';
import MovieDetail from './movies/movie_detail_container';
import { requestUserMovies, requestMovieDetail } from '../actions/movie_actions';
import { requestAllMovielists } from '../actions/movielist_actions';
import { requestReviews } from '../actions/review_actions';

const Root = ({ store }) => {

  const _ensureLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if (!currentUser) {
      replace('/');
    }
  };

  const _redirectIfLoggedIn = (nextState, replace) => {
    const currentUser = store.getState().session.currentUser;
    if (currentUser) {
      replace('/');
    }
  };



  return (

  <Provider store={ store }>
    <Router history={ hashHistory }>
      <Route path="/" component={ App }>
        <IndexRoute component={ShowContainer}/>
        <Route path='/movie-detail/:id' component={MovieDetail}/>
        <Route path='/movielists' component={MovielistIndexContainer}/>

      </Route>
    </Router>
  </Provider>
  );
};
export default Root;
