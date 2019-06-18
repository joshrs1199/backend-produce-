class CartsController < ApplicationController

  def create
    @user = find_current_user
    @item = Item.find_by(id: params[:song_id])
    Cart.create(user_id: @user.id, item_id: @item.id)

    render json: @item 
  end

  def destroy
    @user = find_current_user
    @item = Item.find_by(id: params[:song_id])
    Cart.find_by(user_id: @user.id, item_id: @item.id).delete
    
    render json: @item
  end

end
