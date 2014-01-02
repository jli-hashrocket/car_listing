require 'spec_helper'

feature 'User creates a new car entry' do
  context 'goes to the create entry page' do
    it 'creates a new entry with valid attributes' do
      car = FactoryGirl.create(:car)
      description = "Honda Accord"
      visit new_car_path

      fill_in "Color", with: car.color
      fill_in "Year", with: car.year
      fill_in "Mileage", with: car.mileage
      fill_in "Description", with: description
      click_on "Create Car"

      expect(page).to have_content(car.color)
      expect(page).to have_content(car.year)
      expect(page).to have_content(car.mileage)
      expect(page).to have_content(car.description)
    end

    it 'fails with invalid attributes' do
      visit new_car_path

      click_on "Create Car"

      expect(page).to have_content "Color can't be blank"
      expect(page).to have_content "Year can't be blank"
      expect(page).to have_content "Mileage can't be blank"
    end
  end


end
