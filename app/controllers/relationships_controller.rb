class RelationshipsController < ApplicationController
  
  # フォロー処理
  def create
    current_user.follow(params[:user_id])
    redirect_to request.referer
  end

  # フォロー解除処理
  def destroy
    current_user.unfollow(params[:user_id])
    redirect_to request.referer
  end
end
