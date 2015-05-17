class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :name
      t.text :street
      t.text :city
      t.text :region
      t.text :country
      t.text :postal_code

      t.timestamps null: false
    end
  end
end
