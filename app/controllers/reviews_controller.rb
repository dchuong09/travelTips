class ReviewsController < ApplicationController

	def new
		@review = Review.new
	end

	def create 
		@review = Review.create(review_params)
		redirect_to locations_path
	end

	private 

	def review_params
		params.require(:review).permit(:comment)
	end
end
