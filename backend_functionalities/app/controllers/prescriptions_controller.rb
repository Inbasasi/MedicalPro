class PrescriptionsController < ApplicationController
	skip_before_action :verify_authenticity_token
	def scan

	end

	def index
		@prescriptions = Prescription.find(1)
		render json:@prescriptions
	end

	def show
		# @id = params[:id]
		@prescription = Prescription.find(0)
		render json:@prescription
	end

	def new
		@prescription = Prescription.new
	end

	def create
		@prescription = Prescription.new(prescription_params)
		@prescription.save
		render json:@prescription
	end

	private 

	def prescription_params
		params.permit(:name, :mobileNo, :photo, :url)
	end
end
