Rails.application.routes.draw do
  root 'shakespeare_analyzer#new'
  resources :shakespeare_analyzer, only:[:new,:create]
  get '/shakespeare_analyzer', to: "shakespeare_analyzer#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
