class ReviewsController < ApplicationController
	
	def create 
		@review = Location.find_by_id(params[:location_id])
			.reviews
			.new(review_params)
		
		@review.user_id = current_user.id

		if @review.save 
			redirect_to location_path(params[:location_id])
		end
			
	

	end

	def edit
		@user = current_user
		@location = Location.find_by_id(params[:id])
		@review = Review.find_by_id(params[:id])

	end

	def update 
		review_id = Review.find_by_id(params[:id])
		review_id.update_attributes(review_params)

		redirect_to user_path(current_user.id)
	end

	def destroy 
		@review = Review.find_by_id(params[:id])
		@review.destroy

		redirect_to user_path(current_user.id)
	end

	def review_params
		params.require(:review).permit(:title, :description)
	end

end
