class RentSerializer < ActiveModel::Serializer
  attributes :id, :to, :from, :returned_at
  belongs_to :user
  belongs_to :book
  def returned_at
    object.to > Time.zone.today ? null : object.to
  end
end
