Rails.application.routes.draw do
  devise_for :users

  get 'pages/home'


  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  root to: 'pages#home'

end
