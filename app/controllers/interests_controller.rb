class InterestsController < ApplicationController

	def index
		@interests = Interest.all
	end


	def new
		@interest = Interest.new
	end

	def create
		Interest.create(interest_params)
		redirect_to root_path
	end


	private

	def interest_params
		params.require(:interest).permit(:title, :description)
	end

end
