# app/authentication/authentication_token_manager.rb
class AuthenticationTokenManager
  class << self
    def encode(payload)
      JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end

    def decode(token)
      payload = JWT.decode(token, Rails.application.secrets.secret_key_base, nil)[0]
      AuthenticationDecodedToken.new(payload)
    rescue
      nil
    end
  end
end
