Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resource :user, only: [:create]
    resource :session, only: [:create, :destroy, :show]
    resources :movies, only: [:index, :show]
    resources :movielists, only: [:index, :show, :update, :create, :destroy]
  end

  root "static_pages#root"

  get 'api/movies/detail/:id', to: 'api/movies#movie_detail'
  get '/api/movies/user_movies', to: 'api/movies#user_movies'
end
