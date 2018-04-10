Rails.application.routes.draw do
  root to: 'home#index'

  mount Thredded::Engine => '/forum'
  post '/rate' => 'rater#create', :as => 'rate'

  devise_for :admin_users, {class_name: 'User'}.merge(ActiveAdmin::Devise.config)
  ActiveAdmin.routes(self)

  devise_for :users

  resources :users
  resources :readers_group_members
  resources :readers_groups
  resources :roles
  resources :book_ratings
  resources :ratings
  resources :genres
  resources :books
  resources :favourite_genres

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end