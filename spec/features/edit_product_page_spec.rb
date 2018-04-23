require 'rails_helper'

describe "add review page" do
  it "adds a review to a product" do
    product = Product.create(:name => 'Goku', :cost => 9000, :country => 'Earth', :image => 'ssj.jpg')

    visit product_path(product.id)
    click_link 'Edit Details'
    fill_in 'Name', :with => 'Vegeta'
    click_on 'Update Product'

    expect(page).to have_content 'Vegeta'
  end
end
