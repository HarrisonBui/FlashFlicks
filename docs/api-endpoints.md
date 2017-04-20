# API Endpoints

## HTML API

### Root

- `GET /`

## JSON API

### Users

- `POST /api/users`

### Session

- `POST /api/session`
- `DELETE /api/session`

### Movies

- `GET /api/movies`
  - movie index
- `GET /api/movies/:movie_id`
  - movie details and reviews

### MovieLists

- `GET /api/movielists`
  - all movies lists for current user
- `POST /api/movielists`
  - creates movie lists
- `DELETE /api/movielists/:id`
  - if user is signed in and is the creator

### MovieListMovies

- `POST /api/movie_list_movies`
  - accepts movie_list_id and movie_id query params and adds the movie
    to the movie list of the current user.

### WatchStatus

- `GET /api/watch_status`
  - a list of statuses

### WatchStatusMovies

- `POST /api/watch_status_movies`

### Reviews

- `GET /api/reviews/`
  - accepts movie_id as a query param and fetches all reviews for that movie
- `POST /api/reviews/`
  - accepts movie_id as a query param and creates reviews for that movie
