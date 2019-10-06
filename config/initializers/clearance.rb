Clearance.configure do |config|
  config.routes = false #Will no longer be using Clearance routes as we generated routes: rails g clearance:routes
  config.mailer_sender = "reply@example.com"
  config.rotate_csrf_on_sign_in = true
end
