Rails.application.routes.draw do
  resources :videos
  resources :subcategories
  resources :categories
  resources :subjects
  resources :languages
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
end
