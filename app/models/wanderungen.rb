class Wanderungen < ActiveRecord::Base
	belongs_to :user
	belongs_to :schwierigkeitsgrad
	belongs_to :region
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "https://dl.dropboxusercontent.com/u/6677368/e0a019_5e538bfeb7efa2e2781164e5120e35bd.jpg_256.jpg"
	validates :description, presence: true


	def self.search(search)
	  if search
	    find(:all, :conditions => ['description LIKE ?', "%#{search}%"])
	  else
	    find(:all)
	  end
	end


end


