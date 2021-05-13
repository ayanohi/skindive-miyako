class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    histories = History.where(user_id: @user.id).order(created_at: :desc).pluck(:spot_id)
    @history_list = Spot.find(histories)
    clips = Clip.where(user_id: @user.id).order(created_at: :desc).pluck(:spot_id)
    @clip_list = Spot.find(clips)
  end

  def destroy
    @user = User.find(params[:id])
    if @user.admin != true || @user.email != 'guest@example.com'
      @user.destroy
      flash[:alert] = "ユーザーを削除しました"
      redirect_to user_path(current_user.id)
    end
  end
end
