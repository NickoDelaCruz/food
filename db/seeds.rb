5.times do |index|
  Food.create!(name: Faker::Book.title,
                image: "https://increasify.com.au/wp-content/uploads/2016/08/default-image.png",
                description: Faker::Lorem.sentence(20, false, 0).chop,
                area: Faker::Lorem.sentence(20, false, 0).chop
end
