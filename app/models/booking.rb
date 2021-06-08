class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :item

  # enum booking_type: [ :donation, :creation, :decoration ]

  def donation?
    booking_type == "donation"
  end

  def creation?
    booking_type == "creation"
  end

  def decoration?
    booking_type == "decoration"
  end
end
