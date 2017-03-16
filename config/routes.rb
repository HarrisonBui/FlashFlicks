Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resource :users, only: [:create]
    resource :session, only: [:create, :destroy, :show]
    resources :movies, only: [:index]
  end

  root "static_pages#root"

  get 'api/movies/detail/:id', to: 'api/movies#movie_detail'
end
