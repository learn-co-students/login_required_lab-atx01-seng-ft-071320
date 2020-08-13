Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'sessions#new', as: 'login'
  get '/home', to: 'sessions#show'
  get '/secret', to: 'secrets#show'

  post '/', to: 'sessions#create'
  delete '/', to: 'sessions#destroy'
end
