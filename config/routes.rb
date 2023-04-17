Rails.application.routes.draw do
  # Customer routes
  get 'customers', to: 'customers#index'
  get 'customers/:id', to: 'customers#show'
  post 'customers', to: 'customers#create'
  delete 'customers/:id', to: "customers#destroy"

  # Pet routes
  get 'pets', to: 'pets#index'
  get 'pets/:id', to: 'pets#show'
  post 'pets', to: 'pets#create'
  delete 'pets/:id', to: "pets#destroy"

  # Appointment routes
  get 'appointments', to: 'appointments#index'
  get 'appointments/:id', to: 'appointments#show'
  post 'appointments', to: 'appointments#create'
  delete 'appointments/:id', to: "appointments#destroy"

end
