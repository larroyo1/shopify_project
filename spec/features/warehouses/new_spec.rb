require 'rails_helper'

RSpec.describe 'new warehouse page' do
  describe 'happy path' do
    it 'creates new warehouse' do
      visit new_warehouse_path
      fill_in 'Location', with: 'New York'
      click_button 'Add Warehouse'

      expect(current_path).to eq(warehouses_path)
      expect(page).to have_content('New York')
    end
  end

  describe 'sad path' do
    it 'wont create warehouse with incomplete field' do
      visit new_warehouse_path
      click_button 'Add Warehouse'

      expect(current_path).to_not eq(warehouses_path)
    end
  end
end
