class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :item
  after_create :update_item_status, :send_confirmation_email

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

  private

  def update_item_status
    if booking_type == "creation"
      item.update(status: "in progress")
    elsif booking_type == "decoration"
      item.update(status: "sold")
    end
  end

  def send_confirmation_email
    UserMailer.with(user: self).welcome.deliver_now
  end
end
