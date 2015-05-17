class AddOriginAndDestinationToShipment < ActiveRecord::Migration
  def change
    add_column :shipments, :origin_id, :integer
    add_column :shipments, :destination_id, :integer
  end
end
