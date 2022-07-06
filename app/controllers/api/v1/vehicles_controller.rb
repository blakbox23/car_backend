class Api::V1::VehiclesController < ApplicationController
  def index
    vehicles = Vehicle.all
    render json: vehicles, status:200
  end

  def show
  end

  def destroy
  end
end
