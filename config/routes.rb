Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/roasters', to: 'roasters#index'
  get '/roasters/new', to: 'roasters#new'
  get '/roasters/:id', to: 'roasters#show'
  get '/roasters/:id/edit', to: 'roasters#edit'
  patch '/roasters/:id', to: 'roasters#update'
  post '/roasters', to: 'roasters#create'
  delete '/roasters/:id', to: 'roasters#delete'
  
end
