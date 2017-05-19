Rails.application.routes.draw do

  get 'welcome/index'

  get 'users/new'

  get 'sessions/new'

  root 'welcome#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :request, :will, :search, :users
  post "will/import", to: "will#import"
  get '/instructions', to: "welcome#instructions"
  get '/faq', to: "welcome#faq"
  get '/release', to: "welcome#release"
  get '/contact', to: "welcome#contact"




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
