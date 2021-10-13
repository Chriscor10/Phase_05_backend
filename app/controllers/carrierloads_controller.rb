class CarrierloadsController < ApplicationController
    def index 
        carrierload = Carrierload.all
        render json: carrierload, include: [:carrier, :load]
    end

    def show
        carrierload = Carrierload.all
        render json: :load
    end


    def create
        carrierload = Carrierload.create!(carrierload_params)
        render json: carrierload, status: :created
    end


    private

    def carrierload_params
        params.permit( 
            :load_id,
            :carrier_id
        )
    end
end
