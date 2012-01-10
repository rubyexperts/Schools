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
	 if @user.valid? && @user.save
	   redirect_to :action => :confirmation_needed, :controller => :confirmations
	 else
	   render 'new'
	 end
   end

end
