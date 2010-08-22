class UsersController < ApplicationController

  def new
    @title = "Sign up"
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
    @title = @user.name
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
    if @user.update_attributes(params[:user])
      p "SUCCESS"
      p params[:user]
      flash[:success] = "Profile updated."
      redirect_to @user
    else
      p "FAIL"
      p params[:user]
      p params[:user][:name]
      p params[:user].count
      p @user.errors
      @title = "Edit user"
      render 'edit'
    end
  end
  
  
  def edit
	@user = User.find(params[:id])
	@title = "Edit user"
  end

end