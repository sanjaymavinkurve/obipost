class RealEstatePostsController < ApplicationController
	before_filter :authenticate, :only => [:create, :destroy, :new]
	
	def create
		@real_estate_post = current_user.real_estate_posts.build
													(params[:real_estate_post])
		if @real_estate_post.save
			redirect_to current_user
		else
			render 'new'
		end
	end

	def update
		@real_estate_post = RealEstatePost.find(params[:id])
		if @real_estate_post.update_attributes(params[:real_estate_post])
			redirect_to current_user
		else
			render 'edit'
		end
	end	
	
	def destroy
	end
	
	def new
		@title = "Sign up"
		@real_estate_post = RealEstatePost.new
	end
	
	def edit
		@title = "Edit post"
		@real_estate_post = RealEstatePost.find(params[:id])
	end
	
end