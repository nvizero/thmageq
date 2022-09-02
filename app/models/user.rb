class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    # devise :omniauthable, :database_authenticatable
    devise 	  :database_authenticatable, :registerable,
         	    :recoverable, :rememberable, :trackable, :validatable,
   		        :omniauthable, :omniauth_providers => [:facebook]
  #
	# def self.from_omniauth(auth)
  #
	#     where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
	#         user.provider = auth.provider
	#         user.uid = auth.uid
	#         user.email = auth.info.email
  #         user.name = auth.info.name
  #         # user.image = auth.info.image
  #
	#         user.password = Devise.friendly_token[0,20]
	#     end
  #
	# end

  # devise :omniauthable, :omniauth_providers => [:facebook]

  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.name = auth.info.name #gives full user name
        user.password = Devise.friendly_token[0,20]
        # user.skip_confirmation!
        user.save
      end
  end

  def admin?
    self.role == "admin"
  end

  def level_99?
    self.level == 99
  end
end
