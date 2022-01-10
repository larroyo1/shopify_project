require 'rails_helper'

RSpec.describe 'items index page' do
  before(:each) do
    @warehouse_1 = Warehouse.create!(location: 'Miami')
    @item_1 = @warehouse_1.items.create!(name: 'T-Shirt', quantity: 10, price: 20)
    @warehouse_2 = Warehouse.create!(location: 'Boston')
    @item_2 = @warehouse_2.items.create!(name: 'Beanie', quantity: 4, price: 18)
    visit '/items'
  end

  it 'displays all items with their information' do
    expect(page).to have_content(@item_1.name)
    expect(page).to have_content(@item_1.quantity)
    expect(page).to have_content(@item_1.price)

    expect(page).to have_content(@item_2.name)
    expect(page).to have_content(@item_2.quantity)
    expect(page).to have_content(@item_2.price)
  end

  it 'has a link to visit each warehouse show page' do
    click_link @warehouse_1.location

    expect(current_path).to eq(warehouse_path(@warehouse_1.id))
  end
end
