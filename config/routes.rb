Rails.application.routes.draw do
  get '/', to: 'find#new'
  post "/", to: 'find#show'
  get 'search/new'

  get 'find/new'

  get 'register/new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
