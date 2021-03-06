Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get 'restaurants', to: 'restaurants#index'
  # get  'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: 'reviews'
  # post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'

  resources :restaurants, except: [:destroy,:edit,:update] do
    resources :reviews, only: [:new, :create]
  end


end
