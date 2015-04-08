class User < ActiveRecord::Base
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :users_user_profiles_avatars
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable, :lockable, :confirmable,
         :omniauthable, omniauth_providers: [:twitter]

  scope :send_mail_magazine, -> { where("magazine = ?", "購読する")}

  def self.create_with_omniauth(auth)
  	create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]

      if user.provider = auth["provider"]
  	    user.name = auth["info"]["name"]
      else
  	    user.name = auth["info"]["nickname"]
      end
    end
  end

end
