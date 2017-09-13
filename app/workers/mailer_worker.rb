class MailerWorker
  include Sidekiq::Worker

  def perform(rent_id)
    @rent = Rent.find(rent_id)
    RentMailer.new_record_notification(@rent).deliver
  end
end
