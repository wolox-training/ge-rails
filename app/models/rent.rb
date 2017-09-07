class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validates :from, :to, presence: true
end
