class Parcel < ActiveRecord::Base
  validates(:height, :width, :length, presence: true)
end

