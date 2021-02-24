Rails.application.routes.draw do

  devise_for :users

  resources :gifs
  resources :users, only: [:index, :show]


  get '*tag', to: "gifs#random", as: :random_gif




  
  root to: "gifs#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
