FactoryGirl.define do
  factory :assessment do
    colour  { Faker::Color.color_name }
    comment { Faker::Lorem.sentence }
    date    { Faker::Date.forward(23) }
  end
end
