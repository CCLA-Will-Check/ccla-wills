Rails.application.routes.draw do
  get '/', to: 'request#new'

  get 'register', to: 'register#new'
  get 'firm', to: 'firm#new'

  resources :request, :register, :search, :firm



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
