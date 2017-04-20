## Component Heirarchy

**AuthFormContainer**
  - AuthForm

 **App**
  - Nav
   + Logo
   + UserContainer
  - Sidebar
   + MyMovies
     - WatchStatusContainer
       + WatchStatus
     - WatchListContainer
       + WatchLists
  - MovieListContainer
   + MovieList
     - MovieListItem
  - MovieShow
   + MovieDetailContainer
     - MovieDetail
   + ReviewsContainer
     - Reviews

## Routes

| Path                             | Component                |
|----------------------------------|--------------------------|
| "/sign-up"                       | "AuthFormContainer"      |
| "/sign-in"                       | "AuthFormContainer"      |
| "/home"                          | "HomeContainer"          |
| "/home/movielist/:movielistId"   | "MovieListContainer"     |
| "/home/movie/:movieId"           | "MovieListContainer"     |
| "home/search-results"            | "SearchResultsContainer" |
