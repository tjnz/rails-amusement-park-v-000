class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides
  
  def mood
  	if self.nausea && self.happiness
  		self.nausea > self.happiness ? 'sad' : 'happy'
  	end
  end
  
  def num_rides
  	self.rides.count
  end
end
