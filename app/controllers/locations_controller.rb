class LocationsController < ApplicationController
	def index 
		@locations = Location.all
	end

	def show 
		@location = Location.find(params[:id])
		@review = Review.new
		@reviews = @location.reviews
		@user = current_user


	end


end
