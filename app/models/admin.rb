class Admin < ActiveRecord::Base
	has_secure_password
	validates :password, length: {  minimum: 8  }
	validates_presence_of :email, :password_confirmation
end
