class User < ActiveRecord::Base

	# relations
  has_many :authentications
  has_one :profile
  
  after_create :set_default_associations

  # validations
  validates :first_name, :last_name, :presence => true
  # validates :username, :uniqueness => true

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :image, :username

  def apply_omniauth omniauth
  	authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
  end

  def password_required?
  	(authentications.empty? || !password.blank?) && super
  end

  def set_default_associations
    self.create_profile
  end
  
end
