class BookSuggestion < ApplicationRecord
  belongs_to :user
  validates :author, :title, :link, presence: true
end
