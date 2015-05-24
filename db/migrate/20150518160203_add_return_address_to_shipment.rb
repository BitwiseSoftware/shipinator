class AddReturnAddressToShipment < ActiveRecord::Migration
  def change
    add_column :shipments, :return_address_id, :integer
  end
end
