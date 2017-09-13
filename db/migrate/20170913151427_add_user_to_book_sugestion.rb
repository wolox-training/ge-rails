class AddUserToBookSugestion < ActiveRecord::Migration[5.1]
  def change
    add_reference :book_sugestions, :user, foreign_key: true
  end
end
