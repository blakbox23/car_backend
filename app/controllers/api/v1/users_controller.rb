class Api::V1::UsersController < ApplicationController
    def create
        @user = User.create(user_params)
        if @user.valid?
          render json: { user: @user.username, token: @user.authentication_token }, status: :ok
        else
          render json: @user.errors.full_messages, status: 400
        end
      end
    
      private
    
      def user_params
        params.permit(:username, :email, :password)
      end
    end