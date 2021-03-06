class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :birthdate, :email, :password, :password_confirmation, :remember_me
  validates_presence_of :birthdate

  has_many :stores

  def name
    "#{self.first_name} #{self.last_name}"
  end
end
