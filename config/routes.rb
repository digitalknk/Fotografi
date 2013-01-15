Fotografi::Application.routes.draw do
  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

  root :to => "home#index"
end
