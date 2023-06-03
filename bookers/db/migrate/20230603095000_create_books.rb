class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      #二つのカラムを作成(title, book)
      t.string :title
      t.string :body
      t.timestamps
    end
  end
end
