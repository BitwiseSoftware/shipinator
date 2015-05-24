class AddParcelToShipments < ActiveRecord::Migration
  def change
    add_column :shipments, :parcel_id, :integer
  end
end
