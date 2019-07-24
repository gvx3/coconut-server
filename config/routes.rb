Rails.application.routes.draw do
 
  resources :our_stories
  resources :our_story_types
  resources :contacts
  resources :ingredients
  resources :products
  resources :stores
  resources :store_types
  resources :landings
  resources :landing_types
  resources :benefits
  resources :new_types
  resources :news
  resources :aromatics
  resources :users, param: :_username

  post '/auth/login', to: 'authentication#login'
  # get '/*a', to: 'application#not_found'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
