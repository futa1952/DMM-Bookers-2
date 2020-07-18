Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :users, only: [:show, :edit, :update]
  resources :post_images, only: [:new, :create, :index, :show]
  # devise_for :users
  get 'books/top'
  root 'books#top'
  get 'books/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
