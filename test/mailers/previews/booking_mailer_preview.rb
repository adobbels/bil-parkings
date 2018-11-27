# Preview all emails at http://localhost:3000/rails/mailers/booking_mailer
class BookingMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/booking_mailer/creation_confirmation
  def creation_confirmation
    BookingMailer.creation_confirmation(self)
  end

end
