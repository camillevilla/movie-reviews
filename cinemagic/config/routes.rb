Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # I changed it from double nested resources below:
  # resources :movies do
  #   resources :reviews do
  #     resources :votes
  #   end
  # end

  resources :movies do
    resources :reviews
  end

  resources :reviews do
    resources :votes
  end

  resources :reviews do
    member do
      post 'upvote'
    end
  end

  resources :votes

  resources :genres

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'
  #This is movie index page

  root 'movies#index'

  # root 'movie#index'

end


