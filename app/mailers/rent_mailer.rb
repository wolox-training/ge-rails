class RentMailer < ApplicationMailer
  def new_record_notification(rent)
    @rent = rent
    @today = Time.zone.today
    mail to: @rent.user.email, subject: 'You have a new rent!'
  end
end
