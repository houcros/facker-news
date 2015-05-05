OmniAuth.config.logger = Rails.logger
GOOGLE_KEY = ENV['GOOGLE_KEY']
GOOGLE_SECRET = ENV['GOOGLE_SECRET']

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, GOOGLE_KEY, GOOGLE_SECRET, {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
