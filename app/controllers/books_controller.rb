class BooksController < ApplicationController
  def index
    @books=Book.all
  end

  def new
    @book=Book.new
  end


  def create
    @book=Book.new(book_params)
    if @book.save
    redirect_to book_path(book.id)
    flash[:notice] = "successfully"
    else
    render 
    end
  end
  
  def show
    @book=Book.find(params[:id])
  end

  def edit
    @book=Book.find(params[:id])
  end

  def update
    book=Book.find(params[:id])
   if book.update(book_params)
      redirect_to book_path(book)
      flash[:notice] = "successfully"
   else
     render action: :edit
   end
  end

  def destroy
    flash[:notice] = "successfully"
  end

  private
  def book_params
    params.require(:book).permit(:title,:body)
  end

end
