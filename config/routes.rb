Rails.application.routes.draw do
  root 'home#top'
  get 'home/about' => 'home#about'
  get 'search' => 'searches#search'
  get 'searches/search'
  get 'chat/:id' => 'chat#show', as: 'chat'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :chats, only: [:create]

  resources :users do
    resource :relationships, only: [:create, :destroy]
    member do
      get :following, :followers
    end
  end

  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:destroy, :create]
  end

end
