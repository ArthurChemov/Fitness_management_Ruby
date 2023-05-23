Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'fitnesstracker#index'
  get '/userpanel/:user', to: 'userpanel#mainpage', as: 'user'
  get '/trainermainpage', to: 'userpanel#trainermainpage'
  get '/callories', to: 'callories#index'
  get '/dummypage', to: 'userpanel#dummypage'
  resources :userpanel do
    post '/new', to: 'userpanel#new' 
  end
  get       '/auth',          to: 'auth#authorize'
  get       '/auth/:email',          to: 'auth#set_cookie'
  post      '/auth',          to: 'auth#set_cookie'
end
