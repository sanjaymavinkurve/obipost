class PostsController < ApplicationController
	before_filter :authenticate, :only => [:create, :destroy, :new]
	
	def create
		submitted_step = params[:post].delete("step")
		@post = current_user.posts.new(params[:post])
		3.times {@post.photoframes.build}
		@post.completed = submitted_step.to_i + 1
		@post.save
		@post.current_step = submitted_step.to_i + 1
		if params[:commit] == "Save" || params[:commit] == "I'll finish later"
	    redirect_to current_user
	  elsif params[:commit] == "Next"
  		@title = @post.step_names[@post.current_step.to_i]
		  render 'new'
	  end
	end

	def update
		submitted_step = params[:post].delete("step")
		@post = Post.find(params[:id])		
		@post.update_attributes(params[:post])
		if submitted_step == @post.steps.last
		  # If the user just submitted the final step, mark this post as completed
		  @post.update_attributes(:completed => -1)
			redirect_to current_user
		else
			@post.current_step = submitted_step.to_i + 1
			@title = @post.step_names[@post.current_step.to_i]
			if params[:commit] == "Save" || params[:commit] == "I'll finish later"
  	    redirect_to current_user
  	  elsif params[:commit] == "Next"
  	    @post.update_attributes(:completed => submitted_step.to_i + 1)
  		  render 'new'
  	  end
		end
	end
	
	def edit
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
	
	def show
	  @post = Post.find(params[:id])
	  @title = @post.street
	  respond_to do |format|
      format.html { render :action => 'show', :layout => 'post.html.erb' }
    end
    
  end
	
end