Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, Figaro.env.GOOGLE_CLIENT_ID, Figaro.env.GOOGLE_CLIENT_SECRET
end