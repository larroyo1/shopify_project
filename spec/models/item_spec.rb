require 'rails_helper'

RSpec.describe Item do
  describe 'relationships' do
    it {should belong_to(:warehouse)}
  end

  describe 'validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:quantity)}
    it {should validate_numericality_of(:quantity).is_greater_than(0)}
    it {should validate_presence_of(:price)}
    it {should validate_numericality_of(:price).is_greater_than(0)}
  end
end
