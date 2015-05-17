class AddWeightToParcels < ActiveRecord::Migration
  def change
    add_column :parcels, :weight, :float, scale: 1
  end
end
