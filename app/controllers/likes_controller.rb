class LikesController < ApplicationController

  def create
    micropost=Micropost.find(params[:micropost_id])
     if Like.create(user_id:current_user.id, micropost_id:micropost.id)
      redirect_to micropost.user
    end
  end

  def destroy
    micropost=Micropost.find(params[:micropost_id])
     if like = Like.find_by(user_id:current_user.id, micropost_id:micropost.id)
      like.destroy
      redirect_to micropost.user
    end
  end
end
