class BooksController < ApplicationController
  
  def create
    book = Book.new(book_params)
    book.save
    flash[:notice] = "Book was successfully created."
    redirect_to book_path(book.id) #show画面へ
  end
  
  def index
    @books = Book.all
    @book = Book.new
  end 
  
  def show
    @book = Book.find(params[:id])
  end 
  
  def edit
    @book = Book.find(params[:id])
  end 
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id) #show画面へ
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books/index'
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body) #bookモデルのtitleとbodyに許可を出す
  end 
end
