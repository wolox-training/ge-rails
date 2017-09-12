class RentMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.rent_mailer.new_record_notification.subject
  #
  def new_record_notification(rent)
    @rent = rent
    @today = Time.zone.today
    mail to: @rent.user.email, subject: 'You have a new rent!'
  end
end
