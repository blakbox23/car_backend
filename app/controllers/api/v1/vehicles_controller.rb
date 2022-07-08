class Api::V1::VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
    render json: @vehicles, status:200
  end


  # def create
  #   @user = User.find_by(username: user_params[:username])
  #   @user.vehicles.new(name:"")
  # end

  def show
  end

  # def user_params
  #   params.permit(:username, :vehicle)
  # end

end
