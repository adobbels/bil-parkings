class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.creation_confirmation.subject
  #
  def creation_confirmation(booking)
    @booking = booking
    mail(
      to:       @booking.profile.user.email,
      subject:  "You just booked the car park ##{@booking.parking.number}!"
    )
  end


  def no_creation_confirmation(booking)
    @booking = booking
    mail(
      to:       @booking.profile.user.email,
      subject:  "A problem with your booking for car park ##{@booking.parking.number} !"
    )
  end
end
