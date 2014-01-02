require 'spec_helper'

feature 'User creates a new car entry' do
  context 'goes to the index page' do
    it 'create a new entry when submit is clicked' do
      car = FactoryGirl.create(:car)
      description = "Honda Accord"
      visit new_car_path

      fill_in "Color", with: car.color
      fill_in "Year", with: car.year
      fill_in "Mileage", with: car.mileage
      fill_in "Description", with: description
      click_on "Submit"

      expect(page).to have_content(car.color)
      expect(page).to have_content(car.year)
      expect(page).to have_content(car.mileage)
      expect(page).to have_content(car.description)

    end
  end
end
