require 'rails_helper'

RSpec.describe Item do
  describe 'relationships' do
    it {should belong_to(:warehouse)}
  end

  describe 'validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:quantity)}
    it {should validate_presence_of(:price)}
  end
end
