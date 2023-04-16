Rails.application.routes.draw do

  get 'customers', to: 'customers#index'
  get 'customers/:id', to: 'customers#show'
  post 'customers', to: 'customers#create'

end
