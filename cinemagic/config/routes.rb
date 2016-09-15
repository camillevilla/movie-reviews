Rails.application.routes.draw do
  devise_for :models
  
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'
  #This is movie index page 
  root 'movie#index'
end


