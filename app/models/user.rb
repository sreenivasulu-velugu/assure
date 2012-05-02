class User < ActiveRecord::Base
	has_many :authentications
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :image

  def apply_omniauth omniauth
  	authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
  end

  def password_required?
  	(authentications.empty? || !password.blank?) && super
  end

  def pull_large_fb_pic image_url
    image_url.split('?').[0]+'?type=large'
  end

end