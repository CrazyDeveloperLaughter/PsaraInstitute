require 'encoding_patch'
# Load the Rails application.
require File.expand_path('../application', __FILE__)
# Initialize the Rails application.

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

Rails.application.initialize!

ActionMailer::Base.delivery_method = :sendmail
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.smtp_settings = {
	:address				=> 'smtp.sendgrid.net',
	:port					=> '587',
	:authentication 		=> :plain,
	:user_name				=> ENV["app34862435@heroku.com"],
	:password 				=> ENV["xcura7mj5676"],
	:domain 				=> ENV["www.psara-institute.com"],
	:enable_starttls_auto 	=> true
}