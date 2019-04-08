Rails.application.routes.draw do
  resources :likes
  resources :posts
  resources :feeds
  resources :users
  resources :watchlists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount ActionCable.server => '/cable'
end
