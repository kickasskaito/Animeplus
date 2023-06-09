Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'homes/about', to: 'homes#about'
  resources :users, only: [:index, :show, :edit, :update]
  resources :post_animes, only: [:new, :index, :show, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end