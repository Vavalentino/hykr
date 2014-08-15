class Wanderungen < ActiveRecord::Base
	belongs_to :user
	belongs_to :schwierigkeitsgrad
	belongs_to :region

	def self.search(search)
	  if search
	    find(:all, :conditions => ['description LIKE ?', "%#{search}%"])
	  else
	    find(:all)
	  end
	end


end


