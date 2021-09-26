Rails.application.routes.draw do

  root "teams#index" 
  resources :teams
  resources :matches

end
