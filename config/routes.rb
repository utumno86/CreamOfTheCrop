Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'visitors#index'
  devise_for :users, :controllers => {
    :registrations => 'registrations',
    :omniauth_callbacks => 'omniauth_callbacks'
  }

  resources :users
  resources :wrestlers
  resources :cards, :only => [:index, :show]
  resources :show, :only => [:index, :create]
end
