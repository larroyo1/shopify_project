require 'rails_helper'

RSpec.describe WarehouseItem do
  describe 'relationships' do
    it {should belong_to(:warehouse)}
    it {should belong_to(:item)}
  end
end
