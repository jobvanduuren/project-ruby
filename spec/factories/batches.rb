FactoryGirl.define do
  factory :batch do
    batch_number  { Faker::Number.number(2) }
    end_date      { Faker::Date.forward(23) }
    start_date    { Faker::Date.backward(23) }


    # user              { build(:user) }
  end
end
