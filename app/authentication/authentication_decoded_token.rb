# app/authentication/authentication_decoded_token.rb
class AuthenticationDecodedToken < HashWithIndifferentAccess
  def expired?
    return false if self[:expiration_date].blank?
    Time.zone.now.to_i > self[:expiration_date]
  end

  def valid_verification_code?
    return true if self[:verification_code].blank?
    User.find(self[:user_id]).verification_code == self[:verification_code]
  end

  def warning_expiration_date_reached?
    return false if self[:warning_expiration_date].blank?
    Time.zone.now.to_i >= self[:warning_expiration_date]
  end

  def valid_renew_id?(renew_id)
    return true if self[:renew_id].blank? || renew_id.blank?
    renew_id == self[:renew_id]
  end

  def able_to_renew?
    return true if self[:expiration_date].blank? || self[:maximum_useful_date].blank?
    self[:expiration_date] < self[:maximum_useful_date]
  end
end
