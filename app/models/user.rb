class User < ActiveRecord::Base
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :users_user_profiles_avatars
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable, :lockable, :confirmable,
         :omniauthable, omniauth_providers: [:twitter]

  scope :send_mail_magazine, -> { where("magazine = ?", "購読する")}
end
