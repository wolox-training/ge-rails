FactoryGirl.define do
    factory :book_suggestion do
      publisher  { Faker::Book.publisher }
      title      { Faker::Book.title }
      editorial  { Faker::Book.publisher }
      author     { Faker::Book.author }
      year       { Faker::Number.number(4) }
      price      { Faker::Number.number(4) }
      link       { Faker::Name.name }
      user_id    { 1 }
    end
  end