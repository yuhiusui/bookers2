Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#top'
  get 'home/about' => 'home#about'
  resources :users
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resource :book_comments, only: [:destroy, :create]
  end
end
