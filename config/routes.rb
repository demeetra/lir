Rails.application.routes.draw do
  resources :subscribers
  resources :posts do
	   resources :comments
   end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'posts/index'
  root 'posts#index'

end
