class BooksController < ApplicationController
  def index
    @books=Book.all
  end

  def create
    @book=Book.new(book_params)
    @book.save
    redirect_to "/books/:id"
  end

  def show
    @book=Book.find(params[:id])
  end

  def edit
    @books=Book.find(params[:id])
  end

  def update
    book=Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book)
  end

  def destroy
  end

  private

  def book_params
    params.permit(:title, :body)
  end

end
