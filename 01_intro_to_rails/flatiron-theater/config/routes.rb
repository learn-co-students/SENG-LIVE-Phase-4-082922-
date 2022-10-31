Rails.application.routes.draw do
  resources :users
  resources :productions
  # get '/productions', to: 'productions/index'
end
