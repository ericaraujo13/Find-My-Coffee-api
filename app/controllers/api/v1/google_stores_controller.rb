module Api::V1
  class GoogleStoresController < ApplicationController
    def index
      places = GetGoogleCoffeListService.new(params[:latitude], params[:longitude]).call
      render json: places
    end

    def show
      render json: GetGoogleCoffeeDetailsService.new(params[:id]).call
    end
  end
end
