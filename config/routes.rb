Rails.application.routes.draw do
  resources :topics
  devise_for :users
  resources :subscribers
  resources :posts do
    resources :comments
    resources :likes
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'posts/index'
  root 'posts#index'

  get 'users', to: 'users#index'
  get 'users/:id' => 'users#show', :as => :user
  delete 'users/:id', to: 'users#destroy'
end
