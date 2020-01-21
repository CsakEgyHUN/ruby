Rails.application.routes.draw do

  get 'main/list'
  root 'home#index'
  get 'home/index'

  resources :users
  resources :recipes
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new',        as: 'signup'
  get 'login',  to: 'sessions#new',     as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'list',   to: 'main#list',        as: 'list'
  get 'new',    to: 'main#new',         as: 'new'
  get 'edit',   to: 'main#edit',        as: 'edit'

end