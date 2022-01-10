require 'rails_helper'

RSpec.describe 'warehouse index page' do
  before(:each) do
    @warehouse_1 = Warehouse.create!(location: 'Denver')
    @warehouse_2 = Warehouse.create!(location: 'Seattle')
    visit warehouses_path
  end

  it 'shows all warehouse locations' do
    expect(page).to have_content(@warehouse_1.location)
    expect(page).to have_content(@warehouse_2.location)
  end

  it 'has a link to each warehouses show page' do
    click_link @warehouse_1.location

    expect(current_path).to eq("/warehouses/#{@warehouse_1.id}")
  end
end
