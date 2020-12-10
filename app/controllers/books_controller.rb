class BooksController < ApplicationController
  def index
    @books = Book.sort_by_boolean
  end

  def show
    @book = Book.find(params[:book_id])
  end

  def edit
    @book = Book.find(params[:book_id])
  end

  def update
    book = Book.find(params[:book_id])
    book.update(book_params)
    redirect_to "/books"
  end

  def destroy
    Book.destroy(params[:book_id])
    redirect_to "/books"
  end

  private 
  def book_params
    params.permit(:name, :publication_date, :pages, :currently_printed)
  end
end