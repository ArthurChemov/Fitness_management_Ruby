Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'fitnesstracker#index'
  get '/userpanel/:user', to: 'userpanel#mainpage', as: 'user'
  get '/dummypage', to: 'userpanel#dummypage'
  resources :userpanel do
    resources :trainer do

    end
    
  end
end
