Rails.application.routes.draw do
  get '/', to: 'request#new'

  resources :request, :register, :search


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
