import React from 'react';
import { Provider } from 'react-redux';

import { Router, Route, IndexRoute, hashHistory } from 'react-router';

import App from './App';
import SessionFormContainer from './session_form/session_form_container';
import MovieDetail from './movies/movie_detail_container';
import { requestMovieDetail } from '../actions/movie_actions';
import ShowContainer from './show/show_container';


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
      </Route>
    </Router>
  </Provider>
  );
};
export default Root;
