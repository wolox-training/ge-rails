class CreateBookSugestions < ActiveRecord::Migration[5.1]
  def change
    create_table :book_sugestions do |t|
      t.string :editorial
      t.float :price
      t.string :author
      t.string :title
      t.string :link
      t.string :publisher
      t.string :year

      t.timestamps
    end
  end
end
