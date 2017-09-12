# Preview all emails at http://localhost:3000/rails/mailers/rent_mailer
class RentMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/rent_mailer/new_record_notification
  def new_record_notification
    RentMailerMailer.new_record_notification
  end

end
