class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :landlord_id
      t.string :building_name
      t.string :building_address
      t.string :unit_number
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps

    end
  end
end
