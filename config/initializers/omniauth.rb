Rails.application.config.middleware.use OmniAuth::Builder do 
	provider :twitter,
		Rails.application.secrets.twitter_api_key,
		Rails.application.secrets.twitter_api_secret

    provider :facebook,
        Rails.application.secrets.facebbok_api_key,
		Rails.application.secrets.facebook_api_secret

    #heroku config:set FACEBOOK_KEY=1579231198992498
    #heroku config:set FACEBOOK_SECRET=ba65db3bdb391c3eb8243053c17ba9fb
end