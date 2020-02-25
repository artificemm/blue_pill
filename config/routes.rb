Rails.application.routes.draw do
  resources :agents
  devise_for :users

  get 'pages/home'
  get 'pages/dashboard'


  # require 'sidekiq/web'
  # mount Sidekiq::Web => '/sidekiq'

  root to: 'pages#home'

end
