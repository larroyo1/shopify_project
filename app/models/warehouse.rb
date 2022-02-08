class Warehouse < ApplicationRecord
  has_many :items, dependent: :destroy

  validates_presence_of :location
  validates_uniqueness_of :location
end
