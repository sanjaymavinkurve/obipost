class Post < ActiveRecord::Base
	include FlagShihTzu
	attr_accessor :current_step	
	belongs_to :user
	has_many :photoframes
	accepts_nested_attributes_for :photoframes
	
	def steps
		%w[0 1 2 3]
	end
	
	def step_names
	  ["Contact info", "Property basics", "Features", "Photos"]
  end
	
	def current_step
    @current_step || steps.first
  end
  	
end
