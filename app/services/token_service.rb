class TokenService
  def self.encode(payload, expiration = Rails.application.credentials.dig(:jwt, :expiration).to_i.seconds.from_now)
    payload = payload.dup
    payload[:exp] = expiration.to_i
    JWT.encode(payload, Rails.application.credentials.dig(:jwt, :token_secret_key))
  end

  def self.decode(token)
    JWT.decode(token, Rails.application.credentials.dig(:jwt, :token_secret_key))
  rescue JWT::ExpiredSignature, JWT::DecodeError
    false
  end

  def self.decode_to_payload(token)
    decode(token).first.except('exp').with_indifferent_access
  end
end
