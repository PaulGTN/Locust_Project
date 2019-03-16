# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['apikey'],
  :password => ENV['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'],
  :domain => 'heroku.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
