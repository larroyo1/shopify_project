class Item < ApplicationRecord
  belongs_to :warehouse

  validates_presence_of :name
  validates_presence_of :quantity
  validates_numericality_of :quantity, :greater_than => 0
  validates_presence_of :price
  validates_numericality_of :price, :greater_than => 0
end
