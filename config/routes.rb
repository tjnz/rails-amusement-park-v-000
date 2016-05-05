Rails.application.routes.draw do

	
  resources :attractions
	get 'signup', to: 'users#new'
	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy'
	
  root to: 'static_pages#home'

  resources :users
end