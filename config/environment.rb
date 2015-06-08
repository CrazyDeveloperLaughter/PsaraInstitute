# Load the Rails application.
require File.expand_path('../application', __FILE__)
# Initialize the Rails application.

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

Rails.application.initialize!

ActionMailer::Base.delivery_method = :sendmail
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true

  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default_url_options = { :host => 'psara-institute.com'}
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
  :address => 'smtp.sendgrid.new',
  :port => '25',
  :authentication => "plain",
  :user_name => 'app34862435@heroku.com',
  :password => 'kbrhc1jk',
  :domain => 'muumuu-domain.com',
  :enable_starttls_auto => true
}

ActionMailer.smtp_settings = {
	:address				=> 'smtp.sendgrid.net',
	:port					=> '587',
	:authentication 		=> :plain,
	:user_name				=> ENV["SENDGRID_USERNAME"],
	:password 				=> ENV["SENDGRID_PASSWORD"],
	:domain 				=> ENV["SENDGRID_DOMAIN"],
	:enable_starttls_auto 	=> true
}