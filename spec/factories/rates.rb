FactoryGirl.define do
  factory(:rate) do
    shipment_id(1)
    name("Priority")
    cost(9.5)
  end
end

