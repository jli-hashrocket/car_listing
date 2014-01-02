class Car < ActiveRecord::Base
  validates_presence_of :color
  validates  :year, numericality: true, presence: true
  validates :mileage, numericality: true, presence: true
end
