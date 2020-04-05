Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#top'
  resources :users, only: [:show]
  resources :books
  resources :post_images, only:[:new, :create, :index, :show]
end
