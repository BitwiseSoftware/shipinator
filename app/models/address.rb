class Address < ActiveRecord::Base
  validates(:name, :street, :city, :region, :country, :postal_code, presence: true)
end

