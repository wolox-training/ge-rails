class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :genre
      t.string :author
      t.string :image
      t.string :title
      t.string :publisher
      t.string :year

      t.timestamps
    end
  end
end
