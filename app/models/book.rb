class Book < ApplicationRecord
  validates :genre, :title, :publisher, :author, :year, :image, presence: true
  has_many :rents, dependent: :destroy
end
