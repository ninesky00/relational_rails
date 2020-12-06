Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/roasters', to: 'roasters#index'
  get 'roasters/:id', to: 'roasters#show'
end
