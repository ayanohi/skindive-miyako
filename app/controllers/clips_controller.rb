class ClipsController < ApplicationController
  before_action :set_spot

  def create
    @clip = Clip.create(user_id: current_user.id, spot_id: @spot.id)
  end

  def destroy
    @clip = Clip.find_by(user_id: current_user.id, spot_id: @spot.id)
    @clip.destroy
  end

  private
  def set_spot
    @spot = Spot.find(params[:spot_id])
  end
end
