class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      token = JWT.encode({user_id: @user.id}, 'super_key')
      render json: { user: @user, token: token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end  

private

  def user_params
    params.require(:user).permit(:username, :password, :email, :admin)
  end

end
