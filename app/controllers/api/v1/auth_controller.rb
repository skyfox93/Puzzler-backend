class Api::V1::AuthController < ApplicationController
  #skip_before_action :authorized, only: [:create]

  def create # POST /api/v1/login
    @user = User.find_by(username: user_login_params[:username])

    if @user && @user.authenticate(user_login_params[:password])
      #@token = encode_token({ user_id: @user.id })
      render json: @user, status: :accepted
    elsif @user
        render json: { message: 'incorrect password or username' }, status: :unauthorized
    else
      render json: {message: 'user not found'}, status: :unauthorized
    end
  end

  private

  def user_login_params
    #{user: {username: 'hi', password: '1234'}}
    params.require(:user).permit(:username, :password)
  end
end
