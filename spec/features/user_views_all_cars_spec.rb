require 'spec_helper'

feature 'User views all cars available' do
  context 'goes to the index page' do
    it 'should list all available used cars' do
      car1 = FactoryGirl.create(:car)
      car2 = FactoryGirl.create(:car, color:"red", year:2001, mileage:12000)
      car3 = FactoryGirl.create(:car, color:"green", year:2012, mileage:2000)

      visit cars_path

      expect(page).to have_content(car1.color, car1.year, car1.mileage)
      expect(page).to have_content(car2.color, car2.year, car2.mileage)
      expect(page).to have_content(car3.color, car3.year, car3.mileage)

    end

    it 'should have button to create new entry' do
      visit cars_path

      expect(page).to have_content("New Entry")
    end
  end
end
