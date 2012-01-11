class UsersController < ApplicationController

   #skip_before_filter :login_required, :only => [:new, :create, :confirmation_needed]   
   before_filter :login_required
  # layout 'default'

   def new
	 @user = User.new
	 @user_type = params[:type]
   end

   def create
	 @user = User.new(params[:user])
	 if @user.valid? 
	   @user.type = params[:user][:type]
	   @user.save
	   redirect_to :action => :confirmation_needed, :controller => :confirmations
	 else
	   @user_type = params[:user][:type]
	   render 'new'
	 end
   end
   
   def edit
     @user = User.find(params[:id])
	 @user_type = @user.type
   end
   
   def update
     @user = User.find(params[:id])
	 @user_type = @user.type
	 if @user.update_attributes(params[:user])
	   redirect_to "/home"
	 else
	   render :edit
	 end
   end
   
   def destroy
     @user = User.find(params[:id])
	 @user.destroy
	 redirect_to "/home"
   end

end
