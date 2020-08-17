class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  
  
  def create
    favorite = Micropost.find(params[:favorite_id])
    current_user.favorite(favorite)
    flash[:success] = 'お気に入りに登録しまいした。'
    redirect_to user_path(current_user)
  end

  def destroy
    favorite = Micropost.find(params[:favorite_id])
    current_user.unfavorite(favorite)
    flash[:success] = 'お気に入りから削除しました。'
    redirect_to user_path(current_user)
  end
end
