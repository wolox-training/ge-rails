class BookSerializer < ActiveModel::Serializer
  attributes :id, :genre, :title, :publisher, :author, :year, :image
  def image
    { url: object.image }
  end
end
