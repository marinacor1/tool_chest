Rails.application.routes.draw do
  resources :tools #resource :tools removes the index because only has one thing the show would be the same as the index. 
end
