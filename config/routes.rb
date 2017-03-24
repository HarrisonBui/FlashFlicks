Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resource :user, only: [:create, :show]
    resource :session, only: [:create, :destroy, :show]
    resources :movies, only: [:index, :show, :destroy]
    resources :movielists, only: [:index, :show, :update, :create, :destroy]
    resources :reviews, only: [:index, :create, :update, :destroy]
  end

  root "static_pages#root"

  get 'api/movies/detail/:id', to: 'api/movies#movie_detail'
  get '/api/movies/user_movies', to: 'api/movies#user_movies'
end
