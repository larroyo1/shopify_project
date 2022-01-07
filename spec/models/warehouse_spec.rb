require 'rails_helper'

RSpec.describe Warehouse do
  describe 'relationships' do
    it {should have_many(:warehouse_items)}
    it {should have_many(:items).through(:warehouse_items)}
  end

  describe 'validations' do
    it {should validate_presence_of(:location)}
  end
end
