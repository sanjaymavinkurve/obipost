class PostsController < ApplicationController
	before_filter :authenticate, :only => [:create, :destroy, :new]
	
	def create
		submitted_step = params[:post][:step]
		params[:post].delete("step")
		@post = current_user.posts.new(params[:post])		
		@post.save
		@post.current_step = submitted_step.to_i + 1
		render 'new'
	end

	def update
		submitted_step = params[:post][:step]
		params[:post].delete("step")
		@post = Post.find(params[:id])		
		@post.update_attributes(params[:post])
		p @post.current_step
		if submitted_step == @post.steps.last
			redirect_to current_user
		else
			@post.current_step = submitted_step.to_i + 1
			render 'new'
		end
	end
	
	def destroy
		p params[:id]
		p user_path
		Post.find(params[:id]).destroy
		flash[:success] = "Post deleted."
		redirect_to current_user
	end
	
	def new
		@title = "Sign up"
		@post = Post.new
		3.times {@post.photoframes.build}
	end
	
	def edit
		@title = "Edit post"
		@post = Post.find(params[:id])
		@post.current_step = params[:current_step]
		3.times {@post.photoframes.build}
		render 'new'
	end
	
end