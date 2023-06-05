Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #[top]URLにアクセスされたら[homes]controllerの[top]アクションを呼び出す
  #----homes----
  root to: 'homes#top'
  get '/top' => 'homes#top'
  resources :books
  
  #----homes----
  
  #----books----
  # post 'books' => 'books#create'
  # get 'books/index' => 'books#index', as: 'index_book'
  # get 'books/:id' => 'books#show', as: 'book'
  # get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  # patch 'books/:id' => 'books#update', as: 'update_book'
  # delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  #----books----
  
end
