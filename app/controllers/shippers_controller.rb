class ShippersController < ApplicationController
    def index 
        shipper = Shipper.all
        render json: shipper
    end

    def show
        shipper = Shipper.find_by(shipper_params[:id])
        render json: shipper
    end

    def create
        shipper = Shipper.create!(shipper_params)
        render json: shipper, status: created
    end

    def update
        shipper = Shipper.find_by(shipper_params[:id])
        shipper.update(shipper_params)
        render json: shipper
    end

    def destroy
        shipper = Shipper.find_by(shipper_params[:id])
        shipper.destroy
        head :no_content
    end
        
    private

    def shipper_params
        params.permit(:company_name, :email)
    end
end
