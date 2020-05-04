Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#top'
  get 'home/about' => 'home#about'

  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :books do
    resource :favorites, only: [:create, :destroy]
    resource :book_comments, only: [:destroy, :create]
  end

  resources :relationships, only: [:create, :destroy]
end
