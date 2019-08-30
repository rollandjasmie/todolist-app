Rails.application.routes.draw do
  root 'emails#index'
  resources :emails
  devise_for :users
  get '/home/index', to: "home#index"
  resources :tasks, except: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
