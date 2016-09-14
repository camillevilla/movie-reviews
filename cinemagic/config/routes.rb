Rails.application.routes.draw do
  devise_for :models
  #This is movie index page 
  root 'movie#index'
end
