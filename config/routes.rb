Rails.application.routes.draw do

  resources :request, :will, :search, :firm
  post "will/import", to: "will#import"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
