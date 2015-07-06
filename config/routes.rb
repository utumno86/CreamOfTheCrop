Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users, :controllers =>{
                       :registrations => 'registrations',
                       :omniauth_callbacks => "users/omniauth_callbacks"
                   }

  resources :users
end
