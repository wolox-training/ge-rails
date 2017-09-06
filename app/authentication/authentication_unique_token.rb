# app/authentication/authentication_unique_token.rb
class AuthenticationUniqueToken
  class << self
    # I'm not checking the uniqueness because its unlikely to happen
    def generate
      SecureRandom.hex(16)
    end
  end
end
