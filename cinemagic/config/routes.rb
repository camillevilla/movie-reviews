Rails.application.routes.draw do
  get 'moviedb/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movies do
    resources :reviews
  end

  resources :genres

  get 'movies/search'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'
  #This is movie index page

  root 'movies#index'

  # root 'movie#index'

end


