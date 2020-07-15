class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path
  end

  def show
  end

  def new
  end


  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body, :user_id)
  end
end
