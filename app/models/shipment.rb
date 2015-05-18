class Shipment < ActiveRecord::Base
  validates(:origin_id, :destination_id, presence: true)
  before_save(:validate_return_address)

  belongs_to(:address, class_name: "origin")
  belongs_to(:address, class_name: "destination")
  belongs_to(:address, class_name: "return_address")

private
  def validate_return_address
    self.return_address_id ||= origin_id
  end
end

