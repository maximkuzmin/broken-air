class Admin < ActiveRecord::Base
	has_secure_password
	validates :password, :length =>{  minimum: 8  }
	validates :password_confirmation, :presence => :true
	validates :email, :presence => :true


end
