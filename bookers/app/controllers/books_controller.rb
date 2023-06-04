class BooksController < ApplicationController
  def new
    @book = Book.new
  end 
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books/show'
  end
  
  def index　#一覧画面表示
    @books = Book.all #booksデーブルに保存されているすべてのデータを取得するインスタンス変数
  end 
  
  def show
  end 
  
  def edit
  end 
  
  private
  def book_params
    params.require(:book).permit(:title, :body) #bookモデルのtitleとbodyに許可を出す
  end 
end
