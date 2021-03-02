class HistoriesController < ApplicationController
  before_action :set_spot
  before_action :authenticate_user!

  def create
    @history = History.create(user_id: current_user.id, spot_id: @spot.id)
  end

  def destroy
    @history = History.find_by(user_id: current_user.id, spot_id: @spot.id)
    @history.destroy
  end

  private
  def set_spot
    @spot = Spot.find(params[:spot_id])
  end
end
