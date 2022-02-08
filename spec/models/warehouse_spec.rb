require 'rails_helper'

RSpec.describe Warehouse do
  describe 'relationships' do
    it {should have_many(:items)}
  end

  describe 'validations' do
    it {should validate_presence_of(:location)}
    it {should validate_uniqueness_of(:location)}
  end
end
