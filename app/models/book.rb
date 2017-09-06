class Book < ApplicationRecord
  validates :genre, :title, :publisher, :author, :year, :image, presence: true
end
