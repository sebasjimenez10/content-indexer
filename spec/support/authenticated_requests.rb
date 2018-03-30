RSpec.configure do |config|
  config.before(:all, secured: true) do
    @user_id = SecureRandom.uuid
    @token = Knock::AuthToken.new(payload: { sub: @user_id }).token
  end
end
