Rails.application.routes.draw do
  resources :users do  #resource :tools removes the index because only has one thing the show would be the same as the index.
    resources :tools
  end

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
end
