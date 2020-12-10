class AuthorsController < ApplicationController
  def index
    if params[:age]
      @authors = Author.where("age >= ?", params[:age])
    elsif params[:books]
      @authors = Author.sort_by_book_count
    else
      @authors = Author.sort_by_boolean
    end
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    Author.create(author_params)
    redirect_to '/authors'
  end

  def edit
    @author = Author.find(params[:id])
  end
  
  def update 
    author = Author.find(params[:id])
    author.update(author_params)
    redirect_to "/authors/#{author.id}"
  end

  def destroy
    Author.destroy(params[:id])
    redirect_to '/authors'
  end

  private 
  def author_params
    params.permit(:name, :age, :publications_since, :last_publication, :currently_active)
  end
end