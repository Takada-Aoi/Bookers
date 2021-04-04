class BooksController < ApplicationController
  def index
    @books=Book.all
  end

  def show
  end

  def new
    render "index"
    @book=Book.new
  end
  
  
  def create
    @book=Book.new(book_params)
  end

  def edit
  end
end
