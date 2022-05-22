require 'rails_helper'

RSpec.describe 'new warehouse item page' do
  before(:each) do
    @warehouse = Warehouse.create!(location: 'Denver')
    visit new_warehouse_item_path(@warehouse.id)
  end

  describe 'happy path' do
    it 'adds an item to a warehouses inventory' do
      fill_in 'Name', with: 'Socks'
      fill_in 'Quantity', with: 25
      fill_in 'Price', with: 10
      click_button 'Add Item'

      expect(current_path).to eq(warehouse_path(@warehouse.id))
      expect(page).to have_content('Socks')
    end
  end

  describe 'sad path' do
    it 'wont add item if incomplete' do
      fill_in 'Name', with: 'Socks'
      fill_in 'Quantity', with: 25
      click_button 'Add Item'

      expect(current_path).to_not eq(warehouse_path(@warehouse.id))
      expect(page).to_not have_content('Socks')
    end

    it 'wont add item if quantity is 0' do
      fill_in 'Name', with: 'Socks'
      fill_in 'Price', with: 0
      fill_in 'Quantity', with: 0
      click_button 'Add Item'

      expect(current_path).to_not eq(warehouse_path(@warehouse.id))
      expect(page).to_not have_content('Socks')
    end
  end
end
