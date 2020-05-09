Rails.application.routes.draw do
  get 'searches/search'
  root 'home#top'
  get 'home/about' => 'home#about'
  get 'search' => 'searches#search'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

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
