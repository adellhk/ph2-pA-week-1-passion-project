def generate_shoes
  shoes = {"La Sportiva" => ["Solution", "Solution Women's", "Miura", "Miura VS", "Oxygym", "Tarantula", "Testarossa"], "5.10" => ["Teams", "Blackwing", "Anasazi"], "Evolv" => ["Shaman"], "Mad Rock" => ["Shark 2.0"], "Tenaya" => ["Oasi"]}

  shoes.each_key do |brand|
    shoes[brand].each do |model|
      Shoe.create(brand: brand, model: model, size: 42)
    end
  end

end

def generate_users(num_users = 10)
  num_users.times do
    User.create(username: Faker::Internet.user_name)
  end

end

def generate_reviews(num_reviews = 104)
  num_reviews.times do
    Review.create(author_id: [*1..10].sample, message: Faker::Lorem.sentences(3), shoe_id: [*1..26].sample, fits: [true, false].sample)
  end
end
