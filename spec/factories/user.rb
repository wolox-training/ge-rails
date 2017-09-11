FactoryGirl.define do
  factory :user do
    first_name     { Faker::Name.name }
    last_name      { Faker::Name.name }
    email          { Faker::Internet.email }
    password       { Faker::Food.dish }
  end
end
