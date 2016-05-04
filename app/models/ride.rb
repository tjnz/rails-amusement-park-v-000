class Ride < ActiveRecord::Base
  belongs_to :attraction
  belongs_to :user
  
  def take_ride
  	if can_ride?
	  	user.nausea += attraction.nausea_rating
	  	user.happiness += attraction.happiness_rating
	  	user.tickets -= attraction.tickets
	  	user.save  	
	  else
	  	msg = "Sorry."
	  	msg += " You do not have enough tickets the #{attraction.name}." unless enough_tickets?
	  	msg += " You are not tall enough to ride the #{attraction.name}." unless tall_enough?
	  	msg
	  end
  end
  
  private
  	def enough_tickets?
  		user.tickets >= attraction.tickets
  	end
  	
  	def tall_enough?
  		user.height >= attraction.min_height
  	end
  	
  	def can_ride?
  		enough_tickets? && tall_enough?
  	end
  	
end
