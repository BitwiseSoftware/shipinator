class Parcel < ActiveRecord::Base
  validates(:height, :width, :length, :weight, presence: true)
end

