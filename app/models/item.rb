class Item < ApplicationRecord
  has_many :warehouse_items
  has_many :warehouses, through: :warehouse_items

  validates_presence_of :name
  validates_presence_of :quantity
  validates_presence_of :price 
end
