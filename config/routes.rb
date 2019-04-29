Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :articles
  root 'welcome#index'
  resources :tasks
  root to: "home#index"
  resources :projects
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

