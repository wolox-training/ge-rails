FactoryGirl.define do
  factory :book do
    genre      { Faker::Book.genre }
    title      { Faker::Book.title }
    publisher  { Faker::Book.publisher }
    author     { Faker::Book.author }
    year       { Faker::Number.number(4) }
    image      { Faker::Name.name }
  end
end
