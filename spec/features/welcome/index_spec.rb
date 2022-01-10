require 'rails_helper'

RSpec.describe 'welcome page' do
  before(:each) do
    visit root_path
  end

  it 'visits page' do
    expect(current_path).to eq('/')
  end

  it 'has a button to the warehouses index page' do
    click_button 'View Locations'

    expect(current_path).to eq('/warehouses')
  end

  it 'has a button to the items index page' do
    click_button 'All Items'

    expect(current_path).to eq('/items')
  end
end
