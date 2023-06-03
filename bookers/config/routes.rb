Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #[top]URLにアクセスされたら[homes]controllerの[top]アクションを呼び出す
  #----homes----
  get 'homes/top' => 'homes#top'
  
  #----homes----
  
  #----books----
  get 'books/new' => 'books#new'
  get 'books/index' => 'books#index'
  get 'books/show' => 'books#show'
  get 'books/edit' => 'books#edit'
  #----books----
  
end
