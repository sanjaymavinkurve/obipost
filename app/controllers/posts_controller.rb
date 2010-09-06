class PostsController < ApplicationController
	before_filter :authenticate, :only => [:create, :destroy, :new]
	
	def create
		submitted_step = params[:post][:step]
		params[:post].delete("step")
		@post = current_user.posts.new(params[:post])
		3.times {@post.photoframes.build}
		@post.completed = false
		@post.save
		@post.current_step = submitted_step.to_i + 1
		@title = @post.step_names[@post.current_step.to_i]
		if params[:commit] == "Save"
	    redirect_to current_user
	  elsif params[:commit] == "Next"
		  render 'new'
	  end
	end

	def update
		submitted_step = params[:post][:step]
		params[:post].delete("step")
		@post = Post.find(params[:id])		
		@post.update_attributes(params[:post])
		p @post.current_step
		if submitted_step == @post.steps.last
		  @post.update_attributes(:completed => true)
			redirect_to current_user
		else
			@post.current_step = submitted_step.to_i + 1
			@title = @post.step_names[@post.current_step.to_i]
			if params[:commit] == "Save"
  	    redirect_to current_user
  	  elsif params[:commit] == "Next"
  		  render 'new'
  	  end
		end
	end
	
	def edit
		@post = Post.find(params[:id])
		@post.current_step = params[:current_step]
		@post.existing_post = true;
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
		  respond_to do |format|
		    format.html { redirect_to current_user }
		    format.js
	    end
		    
	  end
	end
	
	def new
		@post = Post.new
		@title = @post.step_names[@post.current_step.to_i]
	end
	
end