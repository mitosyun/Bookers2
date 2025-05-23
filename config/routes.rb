Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "/home/about" => "homes#about", as: "about"
  resources :users, only: [:show, :index, :edit, :update, :create]
  resources :books, only: [:show, :index, :edit, :update, :create, :destroy]
end
