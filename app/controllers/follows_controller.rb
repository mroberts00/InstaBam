class FollowsController < ApplicationController
  def create
    # params = { following: { user_id: x, post_id: y }}
    follow = params[:follow]
    followee = User.find follow[:followed_id]
    current_user.followees << followee
    redirect_to post_path(follow[:post_id])
  end
end
