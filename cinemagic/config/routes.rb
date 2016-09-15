Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movies do
    resources :reviews
  end

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'
  #This is movie index page
  # root 'movie#index'
  root :to =>'movies#index'
  # root 'sessions#new'

end


