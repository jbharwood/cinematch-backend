Rails.application.routes.draw do
  resources :feed_users
  resources :likes
  resources :posts
  resources :feeds
  resources :users
  resources :watchlists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount ActionCable.server => '/cable'

  # route to login
	post "/login", to: "auth#login"

	# login on refresh
	get '/auto_login', to: "auth#auto_login"

end
