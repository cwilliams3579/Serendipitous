Rails.application.routes.draw do

  resources :categories, except: [:destroy]
  resources :products do
    resources :reviews, except: [:show, :index]
  end

  resources :galleries
  resources :articles
  devise_for :users, :controllers => { registrations: 'registrations'}
  root to: 'visitors#index'
end
