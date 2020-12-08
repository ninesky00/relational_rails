Rails.application.routes.draw do
  # Roaster Routes
  get '/roasters', to: 'roasters#index'
  get '/roasters/new', to: 'roasters#new'
  get '/roasters/:id', to: 'roasters#show'
  get '/roasters/:id/edit', to: 'roasters#edit'
  patch '/roasters/:id', to: 'roasters#update'
  post '/roasters', to: 'roasters#create'
  delete '/roasters/:id', to: 'roasters#delete'
  
  # Coffee Beans Routes
  get '/coffeebeans', to: 'coffee_beans#index'
  get '/coffeebeans/:id', to: 'coffee_beans#show'

  # Coffee Bean -> Roasters Routes
  get '/roasters/:id/coffeebeans', to: 'roaster_coffee_beans#index'

end
