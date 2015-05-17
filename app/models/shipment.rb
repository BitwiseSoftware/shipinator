class Shipment < ActiveRecord::Base
  validates(:origin_id, :destination_id, presence: true)

  belongs_to(:address, class_name: "origin")
  belongs_to(:address, class_name: "destination")
end

