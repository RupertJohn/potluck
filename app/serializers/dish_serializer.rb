class DishSerializer < ActiveModel::Serializer
  attributes :name, :quantity

  belongs_to :potluck_event
end
