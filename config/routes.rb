Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
  # get '/roasters', to: 'roasters#index'
  
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
  # get '/authors/:author_id/books/:book_id/edit', to: 'author_books#edit'
  # patch '/authors/:author_id/books/:book_id', to: 'author_books#update'
  # delete '/authors/:author_id/books/:book_id', to: 'author_books#destroy'
  
  # resources :authors do 
  #   resources :books
  # end
end
