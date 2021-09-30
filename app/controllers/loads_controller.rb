class LoadsController < ApplicationController


    def index 
        loads = Load.all
        render json: loads
    end

    def show
        loads = Load.find_by(loads_params[:id])
        render json: loads
    end

    def create
        loads = Load.create!(loads_params)
        render json: loads, status: :created
    end

    def update
        loads = Load.find_by(loads_params[:id])
        loads.update(loads_params)
        render json: loads
    end

    def destroy
        loads = Load.find_by(loads_params[:id])
        loads.destroy
        head :no_content
    end
        
    private

    def loads_params
        params.permit( :container_size,
            :load_weight,
            :origin,
            :destination,
             :price,
             :pickup_time,
             :dropoff_time,
            :pickup_date,
             :dropoff_date,
            :shipper_id,)
    end
end
