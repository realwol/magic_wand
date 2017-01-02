class UsersController < ApplicationController
  def thumb_up
    if current_user.can_thumb_up? params[:article_id]
      current_user.thumb_up params[:article_id]
    end
    render json: true
  end

  def cancel_thumb_up
    current_user.cancel_thumb_up params[:article_id]
    render json: true
  end
end
