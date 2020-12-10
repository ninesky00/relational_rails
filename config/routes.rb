Rails.application.routes.draw do
  get '/', to: 'welcome#index'
  # Roaster Routes
  get '/roasters', to: 'roasters#index'
  get '/roasters/new', to: 'roasters#new'
  get '/roasters/:id', to: 'roasters#show'
  get '/roasters/:id/edit', to: 'roasters#edit', as: :roaster_update
  patch '/roasters/:id', to: 'roasters#update'
  post '/roasters', to: 'roasters#create'
  delete '/roasters/:id', to: 'roasters#delete'
  
  # Coffee Beans Routes
  get '/coffeebeans', to: 'coffee_beans#index'
  get '/coffeebeans/:id', to: 'coffee_beans#show'
  get '/coffeebeans/:id/edit', to: 'coffee_beans#edit', as: :coffee_bean_update
  patch '/coffeebeans/:id', to: 'coffee_beans#update'
  delete '/coffeebeans/:id', to: 'coffee_beans#delete'

  # Coffee Bean -> Roasters Routes
  get '/roasters/:id/coffeebeans', to: 'roaster_coffee_beans#index', as: :roaster_coffee
  post '/roasters/:id/coffeebeans', to: 'roaster_coffee_beans#create'
  get '/roasters/:id/coffeebeans/new', to: 'roaster_coffee_beans#new'
  
  get '/', to: 'welcome#index'
  
  get '/books', to: 'books#index'
  get '/books/:book_id', to: 'books#show'
  get 'books/:book_id/edit', to: 'books#edit'
  patch 'books/:book_id', to: 'books#update'
  delete 'books/:book_id', to: 'books#destroy'

  get '/authors', to: 'authors#index'
  get '/authors/new', to: 'authors#new'
  post '/authors', to: 'authors#create'
  get '/authors/:id', to: 'authors#show'
  get '/authors/:id/edit', to: 'authors#edit'
  patch '/authors/:id', to: 'authors#update'
  delete '/authors/:id', to: 'authors#destroy'
  
  get '/authors/:author_id/books', to: 'author_books#index', as: "author_book_new"
  get '/authors/:author_id/books/new', to: 'author_books#new'
  post '/authors/:author_id/books', to: 'author_books#create'

end
