class MedicalShopsController < ApplicationController
	skip_before_action :verify_authenticity_token

	def new
	  @medical_shop = MedicalShop.new
	end

	def create
	  @medical_shop = MedicalShop.new(medical_shop_params)
	  @medical_shop.save
	  render json:@medical_shop
	end

	def show
	  @medical_shop = MedicalShop.find(mail: mail)
	  render json:@medical_shop
	end

	def index
	  @medical_shop = MedicalShop.all

	  render json:@medical_shop
	end
	private

	def medical_shop_params
      params.permit(:name, :web, :address, :city, :state, :mobile, :mail, :password)
	end
end
