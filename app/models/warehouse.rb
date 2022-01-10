class Warehouse < ApplicationRecord
  has_many :items

  validates_presence_of :location
end
