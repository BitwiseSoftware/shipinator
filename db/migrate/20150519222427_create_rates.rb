class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :shipment_id
      t.text :name
      t.float :cost

      t.timestamps null: false
    end
  end
end
