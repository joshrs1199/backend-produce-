class AuthController < ApplicationController

  def login
    #find user by username
    @user = User.find_by(username: params[:username])
    #check if thier submitted password matches
    if @user && @user.authenticate(params[:password])
      token = JWT.encode({user_id: @user.id}, 'super_key')
      render json: { user: @user, token: token, items: @user.cart_items }
    else
      render json: { errors: 'change to a status code' }
    end
  end

  def auto_login
    @user = find_current_user

    if @user
      render json: { user: @user, items: @user.cart_items }
    else
      render json: { errors: 'you changed localstorage' }
    end
  end

end
