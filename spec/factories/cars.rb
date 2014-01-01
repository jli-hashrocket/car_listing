# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    color "MyString"
    year "2014-01-01"
    mileage 1
  end
end
