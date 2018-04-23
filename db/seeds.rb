Product.destroy_all
Review.destroy_all

50.times do |index|
  product = Product.create!(name: Faker::Hipster.word,
  image: Faker::LoremPixel.image("200x200", false, 'food'),
  country: Faker::Address.country,
  cost: Faker::Number.decimal(2,2)
  )
  7.times do |index|
  review = Review.create!(author: Faker::DragonBall.character,
  content_body: Faker::Lorem.sentence(15, false, 0),
  product_id: product.id,
  rating: Faker::Number.between(1,5))
end
end
