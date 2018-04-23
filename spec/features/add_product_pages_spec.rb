require 'rails_helper'

describe "add product page" do
  it "adds a new product" do
    visit products_path
    click_link 'Add a Product'
    fill_in 'Name', :with => 'ChiChi'
    fill_in 'Cost', :with => 9000
    fill_in 'Country', :with => 'Earth'
    fill_in 'Image', :with => 'martialarts.jpg'
    click_on 'Create Product'
    expect(page).to have_content 'ChiChi'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
