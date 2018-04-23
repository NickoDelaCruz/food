Product.destroy_all
Review.destroy_all

50.times do |index|
  product = Product.create!(name: Faker::Hipster.word,
  image: Faker::LoremPixel.image("200x200", false, 'food'),
  country: Faker::Address.country,
  cost: Faker::Number.decimal(2,2)
  )
end
