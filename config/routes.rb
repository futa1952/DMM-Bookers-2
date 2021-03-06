Rails.application.routes.draw do
  devise_for :users
  resources :books do
    post 'add' => 'favorites#create'
    delete '/add' => 'favorites#destroy'
  end
  resources :users, only: [:show, :edit, :update]
  resources :post_images, only: [:new, :create, :index, :show]
  # devise_for :users
  get 'books/top'
  root 'layouts#top'
  get 'home/about', to: "layouts#about"
  get 'users' => 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
