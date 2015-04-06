class PostMailer < ActionMailer::Base
  
  default from: "app34862435@heroku.com"

  def post_email(user, mail_magazine)
  	@users.each do |user|
      mail from: "app34862435@heroku.com"
      mail to: user.email, subject: "Psara Medical Magazine 第 #{mail_magazine.id} 号"
    end
  end
end