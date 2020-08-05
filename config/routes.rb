Rails.application.routes.draw do

  resources :activities
  resources :nutritions
  resources :exercises
  resources :healths
  resources :styles
  resources :equipment
  devise_for :members
  root to: redirect('/home'), as: :landing_page
  get '/home', to: 'home#index'
  get '/home/join', to: 'home#join'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'
  }

  authenticated do
    root 'dashboard#index', as: :user_root
  end

  authenticate do
    get 'dashboard/index'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
