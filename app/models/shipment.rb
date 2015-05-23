require "canada-post-ruby.rb"

class Shipment < ActiveRecord::Base
  validates(:origin_id, :destination_id, :parcel_id, presence: true)
  before_save(:validate_return_address)
  after_save(:get_rates)

  belongs_to(:origin, class_name: "Address")
  belongs_to(:destination, class_name: "Address")
  belongs_to(:return_address, class_name: "Address")
  belongs_to(:parcel, class_name: "Parcel")

  has_many(:rates)

private
  def validate_return_address
    self.return_address_id ||= origin_id
  end

  def get_rates
    client = CanadaPost.new(
      ENV["canada_post_user"], ENV["canada_post_pass"], true
    )
    rates = client.get_rate(
      origin.postal_code, destination.postal_code, {weight: 23.4}
    )
    rates.each do |rate|
      rate[:shipment_id] = self.id
      Rate.create(rate.slice(:shipment_id, :name, :cost))
    end
  end
end

