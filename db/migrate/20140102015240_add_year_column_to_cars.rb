class AddYearColumnToCars < ActiveRecord::Migration
  def up
    add_column :cars, :year, :integer, null:false
  end

  def down
    remove_column :cars, :year
  end
end
