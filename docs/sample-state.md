```
{
  session: {
    currentUser: {
      id: 1,
      username: HarrisonBui,
  },
  movies: {
    1: {
      id: 1,
      title: Forrest Gump,
      image_url: 'path/1'
    },
    ...
  },

  movieDetail: {
    id: 1,
    title: 'Forrest Gump',
    director: Robert Zemeckis,
    image_url: 'path/1',
    year: '1994',
    description: 'Some text summarizing the movie plot',
    average_rating: 5
    reviews: {
      1: {
        id: 1,
        movieId: 1,
        userId: 2,
        rating: 5,
        body: ''
        },
        ...
      },
  },

  movieLists: {
    1: {
      id: 1,
      title: comedy,
      movies: [1]
    },
    ...
  },
  forms: {
    errors: []
  }
}
```
