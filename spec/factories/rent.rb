FactoryGirl.define do
    factory :rent do
      to     { Faker::Date.forward(23) }
      from   { Faker::Date.between(2.days.ago, Date.today) }
    end
  end
  