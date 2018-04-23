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


	def review_params
		params.require(:review).permit(:title, :description)
	end

end
