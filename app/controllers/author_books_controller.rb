class AuthorBooksController < ApplicationController
  def index
    @author = Author.find(params[:author_id])
    @author_books = @author.books
    if params[:sort]
      @author_books = @author.books.order(:name)
    end
  end

  def new
    @author_id = params[:author_id]
  end

  def create
    author = Author.find(params[:author_id])
    book = author.books.create!(book_params)
    redirect_to "/books"
  end

  # def edit
  #   @book = Book.find(params[:book_id])
  # end

  # def update
  #   book = Author.find(params[:book_id])
  #   book.update(author_params)
  # end

  # def destroy
  #   Book.destroy(params[:book_id])
  # end

  private 
  def book_params
    params.permit(:name, :publication_date, :pages, :currently_printed)
  end
end