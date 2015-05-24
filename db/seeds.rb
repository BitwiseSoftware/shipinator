# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


if Rails.env.development?
  address = Address.create(
    name: "Billy Bob", street: "157 Main Street", city: "Toronto",
    region: "Ontario", country: "Canada", postal_code: "K2G6S6"
  )
  parcel = Parcel.create(height: 20, width: 30, length: 40, weight: 8.5)
  Shipment.create(origin: address, destination: address, parcel: parcel)
end

