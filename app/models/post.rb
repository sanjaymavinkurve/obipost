class Post < ActiveRecord::Base
	attr_protected
	belongs_to :user

end
