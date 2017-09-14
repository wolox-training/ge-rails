class CreateBookSuggestion < ActiveRecord::Migration[5.1]
  def change
    create_table :book_suggestions do |t|
      t.string :editorial, :default => ''
      t.float :price, :default => 0
      t.string :author
      t.string :title
      t.string :link
      t.string :publisher, :default => ''
      t.string :year, :default => Time.current.year

      t.timestamps
    end
  end
end