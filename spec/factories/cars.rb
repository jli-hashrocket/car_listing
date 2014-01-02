# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    sequence(:color) {|n| "Black{n}" }
    year 2001
    mileage 15000
  end
end
