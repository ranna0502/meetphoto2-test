Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get "home/about" => "homes#about", as: "about"

  resources :users, only: [:index,:show,:edit,:update]
  resources :addresses, only: [:new, :show, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end