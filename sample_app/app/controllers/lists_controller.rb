class ListsController < ApplicationController
  def new
    @list = List.new
  end
  
  def create
    list = List.new(list_params) #データを受け取り新規登録するためのインスタンス作成
    list.save #データをDBに保存するためのsaveメソッド実行
    redirect_to '/top' #top画面へ遷移
  end
    

  def index
  end

  def show
  end

  def edit
  end
  
  private
  #ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
