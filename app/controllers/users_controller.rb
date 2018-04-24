class UsersController < ApplicationController

	def create 
		@users = User.all
		login(@user) # <-- log the user in
    	redirect_to @user # <-- go to show
	end 

	def new 
		@user = User.new
	end

	def create 
		@user = User.create(user_params)
		login(@user)
		redirect_to root_path
	end

	def show 
		@user = User.find_by_id(params[:id])
		@reviews = @user.reviews
	end

	

	private 

	def user_params
		params.require(:user).permit(:name, :email, :city, :password)
	end
end
