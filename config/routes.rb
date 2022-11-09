Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # A visitor can see the list of all restaurants.
  # get 'restaurants', to: 'restaurants#index'

  # A visitor can add a new restaurant,
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'

  # and be redirected to the show view of that new restaurant.
  # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
  # get 'restaurants/:id', to: 'restaurants#show'
  # A visitor can add a new review to a restaurant
  # get 'restaurants/:id/reviews/new', to: 'reviews#new'
  # post 'restaurants/:id/reviews', to: 'reviews#create'

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end
end
