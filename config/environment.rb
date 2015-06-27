require 'encoding_patch'
# Load the Rails application.
require File.expand_path('../application', __FILE__)
# Initialize the Rails application.

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

Rails.application.initialize!

ActionMailer::perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.default_url_options = { :host => 'psara-institute.com' }
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => "plain",
  :user_name => 'app34862435@heroku.com',
  :password => 'kbrhc1jk',
  :domain => 'heroku.com',
  :enable_starttls_auto => true
}