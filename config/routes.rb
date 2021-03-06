Rails.application.routes.draw do

  resources :products do
    resources :orders
    resources :categories, except: [:destroy]
    resources :reviews, except: [:show, :index]
  end

  resources :galleries
  resources :articles
  devise_for :users, :controllers => { registrations: 'registrations'}
  root to: 'visitors#index'

  get 'seller' => "products#seller"
  get 'sales' => "orders#sales"
  get 'purchases' => "orders#purchases"
end
