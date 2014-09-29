class Wanderungen < ActiveRecord::Base
	belongs_to :user
	belongs_to :schwierigkeitsgrad
	belongs_to :region
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates :description, presence: true


	def self.search(search)
	  if search
	    find(:all, :conditions => ['description LIKE ?', "%#{search}%"])
	  else
	    find(:all)
	  end
	end


end


