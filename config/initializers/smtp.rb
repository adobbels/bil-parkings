ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  domain: 'gmail.com',
  # user_name: ENV['GMAIL_ADDRESS'],
  # password: ENV['GMAIL_APP_PASSWORD'],
  user_name: "hellosteryz@gmail.com",
  password: "Steryz2018!",
  authentication: :login,
  enable_starttls_auto: true
}
