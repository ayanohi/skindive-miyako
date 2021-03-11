class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    histories = History.where(user_id: @user.id).order(created_at: :desc).pluck(:spot_id)
    @history_list = Spot.find(histories)
    clips = Clip.where(user_id: @user.id).order(created_at: :desc).pluck(:spot_id)
    @clip_list = Spot.find(clips)
  end
end
