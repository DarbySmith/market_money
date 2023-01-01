FactoryBot.define do
  factory :market do 
    fmid { Faker::Number.within(range: 100..999) }
    name { Faker::Commerce.vendor }
    street { Faker::Address.street_address }
    city { Faker::Address.city }
    county { Faker::Lorem.word } 
    state { Faker::Address.state }
    zip { Faker::Address.zip }
  end
end