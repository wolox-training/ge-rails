class BookSerializer < ActiveModel::Serializer
  attributes :id, :genre, :title, :publisher, :author, :year
  attribute(:image) { { url: object.image } }
end
