class PostsController < ApplicationController
	before_filter :authenticate, :only => [:create, :destroy, :new]
	
	def create
		@post = current_user.posts.build
													(params[:post])
		if @post.save
			redirect_to current_user
		else
			render 'new'
		end
	end

	def update
		@post = Post.find(params[:id])
		if @post.update_attributes(params[:post])
			redirect_to current_user
		else
			render 'edit'
		end
	end	
	
	def destroy
	end
	
	def new
		@title = "Sign up"
		@post = Post.new
	end
	
	def edit
		@title = "Edit post"
		@post = Post.find(params[:id])
	end
	
end