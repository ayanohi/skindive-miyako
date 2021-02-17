class SpotsController < ApplicationController

  def index
    @spots = Spot.all.order(id: :desc)
    @areas = Area.all
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    if @spot.save
      redirect_to spots_path
    else
      render :new
    end
  end

  def show
    @spot = Spot.find(params[:id])
  end

  private
  def spot_params
    params.require(:spot).permit(
      :name,
      :description,
      :postal_code,
      :address,
      :image,
      :area_id
    )
  end
end
