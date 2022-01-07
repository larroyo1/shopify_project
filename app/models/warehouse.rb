class Warehouse < ApplicationRecord
  has_many :warehouse_items
  has_many :items, through: :warehouse_items

  validates_presence_of :location
end
