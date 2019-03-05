class Api::V1::UsersController < ApplicationController
  #skip_before_action :authorized, only: [:create]
  def show
    @user=User.find(params[:id])
    render json: @user
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @user.create_puzzles
      #@token = encode_token(user_id: @user.id)
      render json: @user, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update
    @user=User.find(params[:id])
    if @user && @user.authenticate(user_params[:password])
      @user.update(username:params[:user][:username])
        if @user.valid?
        #@token = encode_token(user_id: @user.id)
        render json: @user, status: :ok
      else
        render json: { error: @user.errors.fullMessages }, status: :not_acceptable
      end
    else
      render json: { error: @user.errors.fullMessages }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :avatar)
  end
end
