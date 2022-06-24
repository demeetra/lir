Rails.application.routes.draw do
  get 'promo/index'
  resources :categories
  get 'main/index'
  resources :ports
  resources :topics
  devise_for :users
  resources :subscribers
  resources :posts do
    resources :comments
    resources :likes
    resources :unlikes
    resources :favorites
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'promo', to: 'promo#index'
  get 'main/index'
  root 'main#index'

  get 'users', to: 'users#index'
  get 'users/:id' => 'users#show', :as => :user
  delete 'users/:id', to: 'users#destroy'
end
