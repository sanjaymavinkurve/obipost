class UsersController < ApplicationController

	before_filter :authenticate, :only => [:index, :edit, :update]
	before_filter :correct_user, :only => [:edit, :update]
	
	def new
		@title = "Sign up"
		@user = User.new
	end
	
	def index
		@title = "All users"
		@users = User.all
	end
	
	def show
		@user = User.find(params[:id])
		# @title = "My Flyers"
	end
	
	def create
		@user = User.new(params[:user])	
		if @user.save
			sign_in @user
			flash[:success] = "Welcome to Obipost!"
			redirect_to @user
		else
			@title = "Sign up"
			render 'new'
		end
	end
	
	def update
		@user = User.find(params[:id])
		
		# form_name_email
		if params[:user][:form_type] == 'form_name_email'
			@user.updating_password = false
			if @user.update_attributes(params[:user])
				flash[:success] = "Profile updated."
				redirect_to @user
			else
				@title = "Edit user"
				render 'edit'
			end
		end
	
	end
	
	def edit
		# @title = "Edit user"
	end
	
	def destroy
		User.find(params[:id]).destroy
		flash[:success] = "User destroyed."
		redirect_to users_path
	end
	
	private
		
		def correct_user
			@user = User.find(params[:id])
			redirect_to(root_path) unless current_user?(@user)
		end

end