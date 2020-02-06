class ProductInstancesController < ApplicationController
    def index
        pis = ProductInstance.all
        render json: pis
    end

    def show
        pi = ProductInstance.find[:id]
        render json: pi
    end

    def create
        pi = ProductInstance.create(pi_params)
        render json: pi
    end

    def update
        pi = ProductInstance.find[:id]
        pi.update(pi_params)
        render json: pi
    end

    def destroy
        pi = ProductInstance.find[:id]
        pi.destroy
    end

    private

    def pi_params
        params.permit(:id, :cart_id, :product_id, :quantity)
    end

end
