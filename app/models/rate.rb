class Rate < ActiveRecord::Base
  validates(:name, :shipment_id, :cost, presence: true)

  belongs_to(:shipment)
end

