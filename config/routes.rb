Fotografi::Application.routes.draw do
	
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  resources :users
  resources :sessions
  resources :photos
  root :to => "home#index"
end
