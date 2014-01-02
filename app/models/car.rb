class Car < ActiveRecord::Base
  validates_presence_of :color
  validates  :year, numericality: { only_integer: true, greater_than_or_equal_to: 1980 }, presence: true
  validates :mileage, numericality: true, presence: true
end
