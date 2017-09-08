class BookImageSerializer < ActiveModel::Serializer
  attributes :id, :genre, :title, :publisher, :author, :year
  has_one :actual_rent
  def actual_rent
    object.rents.where('rents.to < :today', today: Time.zone.today).last
  end
end
