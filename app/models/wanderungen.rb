class Wanderungen < ActiveRecord::Base
	belongs_to :user
	belongs_to :schwierigkeitsgrad
end


