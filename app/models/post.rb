class Post < ActiveRecord::Base
	attr_protected
	attr_writer :current_step
	
	belongs_to :user
	
	has_many :photoframes
	accepts_nested_attributes_for :photoframes

	def steps
		%w[1 2 3]
	end
	
	def current_step
    @current_step || steps.first
  end
	
end
