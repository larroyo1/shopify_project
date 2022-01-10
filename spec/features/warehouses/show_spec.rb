require 'rails_helper'

RSpec.describe 'warehouse show page' do
  before(:each) do
    @warehouse = Warehouse.create!(location: 'Denver')
    @item_1 = @warehouse.items.create!(name: 'Shirt', quantity: 5, price: 10)
    @item_2 = @warehouse.items.create!(name: 'Hat', quantity: 11, price: 17)
    visit warehouse_path(@warehouse.id)
  end

  it 'shows the warehouses items with their info' do
    expect(page).to have_content(@item_1.name)
    expect(page).to have_content(@item_1.quantity)
    expect(page).to have_content(@item_1.price)

    expect(page).to have_content(@item_2.name)
    expect(page).to have_content(@item_2.quantity)
    expect(page).to have_content(@item_2.price)
  end

  it 'has a button to create new items' do
    click_button 'Add Item'

    expect(current_path).to eq(new_warehouse_item_path(@warehouse.id))
  end
end
