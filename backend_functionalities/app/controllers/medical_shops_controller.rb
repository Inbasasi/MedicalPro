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
	  @medical_shop = MedicalShop.where(mail: params[:mail])
	  if @medical_shop.present? && @medical_shop[0].password.eql?(params[:password]) then
	  	# @medical_shop[1].merge(:authentication => true)
	  	render json:@medical_shop
	  else
	  	render json:{'authentication' => false}
	  end
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
