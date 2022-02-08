require 'rails_helper'

RSpec.describe 'item edit page' do
  describe 'happy path' do
    it 'edits item' do
      warehouse = Warehouse.create!(location: 'Denver')
      item = warehouse.items.create!(name: 'Socks', quantity: 25, price: 10)
      visit edit_warehouse_item_path(warehouse.id, item.id)

      fill_in 'Name', with: 'ZZocks'
      click_button 'Update Item'

      expect(current_path).to eq(warehouse_path(warehouse.id))
      expect(page).to have_content('ZZocks')
    end

    it 'deletes item' do
      warehouse = Warehouse.create!(location: 'Denver')
      item = warehouse.items.create!(name: 'Socks', quantity: 25, price: 10)
      visit edit_warehouse_item_path(warehouse.id, item.id)

      click_button 'Delete Item'

      expect(current_path).to eq(warehouse_path(warehouse.id))
      expect(page).to have_content("#{item.name} removed from the #{warehouse.location} warehouse.")
    end
  end
end
