class Attraction < ActiveRecord::Base
	has_many :rides
	has_many :users, through: :rides
	
	def num_users
  	self.users.count
  end
  
	
end
