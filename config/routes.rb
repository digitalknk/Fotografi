Fotografi::Application.routes.draw do

	root :to => "photos#index"
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  resources :users
  resources :sessions
  resources :photos
  
end
