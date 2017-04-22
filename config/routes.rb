Rails.application.routes.draw do

  get 'users/new'

  get 'sessions/new'

  root 'request#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :request, :will, :search, :users
  post "will/import", to: "will#import"





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
