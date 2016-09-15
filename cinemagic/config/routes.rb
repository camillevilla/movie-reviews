Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movies do
    resources :reviews
  end

  devise_for :models

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'
  #This is movie index page
  # root 'movie#index'
  root 'sessions#new'

end


