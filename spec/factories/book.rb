FactoryGirl.define do
  factory :book do
    author     { Faker::Book.author }
    genre      { Faker::Book.genre }
    image      { Faker::Name.name  }
    title      { Faker::Book.title }
    publisher  { Faker::Book.publisher }
    year       { Faker::Number.number(4) }
  end
end
