class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :color, null:false
      t.date :year, null:false
      t.integer :mileage, null:false

      t.timestamps
    end
  end
end
