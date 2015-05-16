class CreateParcels < ActiveRecord::Migration
  def change
    create_table :parcels do |t|
      t.float :height, null: false, scale: 1
      t.float :width, null: false, scale: 1
      t.float :length, null: false, scale: 1

      t.timestamps null: false
    end
  end
end

