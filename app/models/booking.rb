class Booking < ApplicationRecord
  belongs_to :parking
  belongs_to :profile

  after_create :send_new_booking_email

  private

  def send_new_booking_email
    BookingMailer.creation_confirmation(self).deliver_now
  end

end
