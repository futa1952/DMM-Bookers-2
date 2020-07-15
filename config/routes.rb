Rails.application.routes.draw do
  resources :books
  devise_for :installs
  devise_for :users
  root 'books#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
