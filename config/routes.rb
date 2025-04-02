Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  get 'home/about', to: 'homes#about', as: :about
  resources :books, only: [:new, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
end
