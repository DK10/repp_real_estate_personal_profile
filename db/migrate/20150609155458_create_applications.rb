class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.integer :unit_id
      t.integer :tenant_id

      t.timestamps

    end
  end
end
