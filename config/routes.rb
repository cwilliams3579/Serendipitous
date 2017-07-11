Rails.application.routes.draw do
  resources :products
  resources :galleries
  resources :articles
  devise_for :users, :controllers => { registrations: 'registrations'}
  root to: 'visitors#index'
end
