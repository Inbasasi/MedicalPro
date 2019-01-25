class VictimController < ApplicationController
	skip_before_action :verify_authenticity_token


	def index
		@victim = Victim.all
		render json: @victim
	end

	def show
		@victim = Victim.find(params[:id])
		render json: @victim
	end

	def new

	end

	def create
		@victim = Victim.new(victim_params)
		@victim.save
		render json: @victim
	end

	private

	def victim_params
		raise params.inspect
		params.require(:victim).permit(:name, :mobileNo)
	end
end
