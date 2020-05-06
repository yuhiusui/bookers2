Rails.application.routes.draw do
  devise_for :users
  root 'home#top'
  get 'home/about' => 'home#about'

  resources :users do
    member do
      get :following, :followers
    end
    resource :relationships, only: [:create, :destroy]
  end

  resources :books do
    resource :favorites, only: [:create, :destroy]
    resource :book_comments, only: [:destroy, :create]
  end

  #resources :relationships, only: [:create, :destroy]
end
