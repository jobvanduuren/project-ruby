FactoryGirl.define do
  factory :student do
    first_name  { Faker::Name.first_name }
    surname     { Faker::Name.last_name }
    image_url   { Faker::Internet.url }
    colour      "green"
    comment     "bad student"

  end
end
