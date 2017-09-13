class RentMailer < ApplicationMailer
  def new_record_notification(rent)
    @rent = rent
    @today = Time.zone.today
    I18n.locale = @rent.user.locale
    mail to: @rent.user.email, subject: 'You have a new rent!'
  end
end
