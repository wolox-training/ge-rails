class AddUserToBookSuggestion < ActiveRecord::Migration[5.1]
  def change
    add_reference :book_suggestions, :user, foreign_key: true
  end
end
