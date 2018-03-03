class User < ActiveRecord::Base
	has_many :ratings
	has_many :orders

	has_secure_password

	before_save {self.email = email.downcase}
	validates :name, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i



	
end
