Rails.application.routes.draw do
  get 'searches/search'
  devise_for :users
  root 'home#top'
  get 'home/about' => 'home#about'
  get 'search' => 'searches#search'

  resources :users, shallow: true do
    member do
      get :following, :followers
    end
    resource :relationships, only: [:create, :destroy]
  end

  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:destroy, :create]
  end

  #resources :relationships, only: [:create, :destroy]
end
