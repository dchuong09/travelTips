class UsersController < ApplicationController

	def create 
		@users = User.all
	end 

	def new 
		@user = User.new
	end

	def create 
		@user = User.create(user_params)
		redirect_to root_path
	end


	private 

	def user_params
		params.require(:user).permit(:name, :email, :city, :password)
	end
end
