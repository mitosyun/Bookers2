Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :users, only: [:show, :index, :edit]
  resources :books, only: [:show, :index, :edit, :update, :create, :destroy]
  post '/books/:id', to: 'books#update'
  get "/home/about" => "homes#about", as: "about"
end
