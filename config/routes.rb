Rails.application.routes.draw do
  resources :users do  #resource :tools removes the index because only has one thing the show would be the same as the index.
    resources :tools
  end
  # get '/login/', "sessions#new"
  # post '/login', "sessions#create"
  # delete '/logout' "sessions#destroy"
end
