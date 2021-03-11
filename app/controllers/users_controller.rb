class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @user = current_user

    histories = History.where(user_id: current_user.id).order(created_at: :desc).pluck(:spot_id)
    @history_list = Spot.find(histories)
    clips = Clip.where(user_id: current_user.id).order(created_at: :desc).pluck(:spot_id)
    @clip_list = Spot.find(clips)
  end
end
