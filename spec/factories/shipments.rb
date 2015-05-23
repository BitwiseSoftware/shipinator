FactoryGirl.define do
  factory(:shipment) do
    origin_id(1)
    destination_id(1)
    return_address_id(3)
    parcel_id(1)
  end
end

