class PotluckEvent < ApplicationRecord
  has_many :dishes, dependent: :destroy
end
