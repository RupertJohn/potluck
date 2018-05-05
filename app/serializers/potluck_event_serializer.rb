class PotluckEventSerializer < ActiveModel::Serializer
  attributes :name, :location, :location_nickname, :date

  has_many :dishes
end
