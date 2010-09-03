class PostsController < ApplicationController
	before_filter :authenticate, :only => [:create, :destroy, :new]
	
	def create
		submitted_step = params[:post][:step]
		params[:post].delete("step")
		@post = current_user.posts.new(params[:post])
		3.times {@post.photoframes.build}
		@post.save
		@post.current_step = submitted_step.to_i + 1
		@title = @post.step_names[@post.current_step.to_i]
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
			@title = @post.step_names[@post.current_step.to_i]
			render 'new'
		end
	end
	
	def edit
		@title = "Edit post"
		@post = Post.find(params[:id])
		@post.current_step = params[:current_step]
		@title = @post.step_names[@post.current_step.to_i]
		render 'new'
	end
	
	
	def destroy
	  # HACK
	  # What is the right way to check that a record exists before attempting to
	  # delete it?  Double-deletion occurs when the user presses the "Delete"
	  # link twice in rapid succession.
	  
		if Post.find_by_id(params[:id]).nil?
		  redirect_to current_user
	  else
		  Post.find(params[:id]).destroy
		  flash[:success] = "Post deleted."
		  redirect_to current_user
	  end
	end
	
	def new
		@post = Post.new
		@title = @post.step_names[@post.current_step.to_i]
	end
	
end