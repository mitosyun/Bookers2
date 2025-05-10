Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :users, only: [:show, :index, :edit, :update, :create]
  resources :books, only: [:show, :index, :edit, :update, :create, :destroy]
  get "/home/about" => "homes#about", as: "about"
end
