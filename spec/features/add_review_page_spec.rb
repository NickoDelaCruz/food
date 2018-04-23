require 'rails_helper'

describe "add review page" do
  it "adds a review to a product" do
    product = Product.create(:name => 'Vegeta', :cost => 90000, :country => 'Earth', :image => 'finalflash.jpg')

    visit new_product_review_path(product.id)

    fill_in 'Author', :with => 'Gohan'
    fill_in 'Content body', :with => 'Kamehamehaaaa'
    fill_in 'Rating', :with => 5
    click_on 'Create Review'

    expect(page).to have_content 'Vegeta'
  end
end
