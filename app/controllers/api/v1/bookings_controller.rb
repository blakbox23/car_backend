class Api::V1::BookingsController < ApplicationController
    # def index
    #   @bookings = logged_in_user.reservations.includes(:item)
    #   render json: @reservations.to_json(include: :item), status: :ok
    # end
  
    def create
      # @user = User.find_by(username: booking_params[:username])
      
      @token = request.headers["Authorization"].split(' ').last
      @user = User.find_by(authentication_token: @token)
      
      
      @booking = Booking.new(booking_params)
      @booking.user_id = @user.id
      if @booking.save
        render json: { success: ['Reservation saved']}, status: :ok
      else
        render json: { errors: [
          'Reservation save failed',
          @booking.errors.full_messages
        ] }, status: 400
      end
    end
  
    # def destroy
    #   @reservation = Reservation.find(params[:id])
    #   if @reservation.destroy
    #     render json: { success: ['Reservation deleted'] }, status: :ok
    #   else
    #     render json: { errors: ['Reservation delete failed '] }, status: 400
    #   end
    # end
  
    private
  
    def booking_params
      params.permit(:vehicle_id, :start, :end)
    end
  end