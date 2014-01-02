class ChangeYearColumnForCars < ActiveRecord::Migration
  def up
    remove_column :cars, :year
  end

  def down
    add_column :cars, :year, :date, null:false
  end
end
