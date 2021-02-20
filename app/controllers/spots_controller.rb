class SpotsController < ApplicationController

  def index
    @spots = Spot.all
    if @q = Spot.ransack(params[:q])
      @spots = @q.result
    end
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

  def edit
    @spot = Spot.find(params[:id])
  end

  def update
    @spot = Spot.find(params[:id])
    if @spot.update(spot_params)
      redirect_to spot_path(@spot.id)
    else
      render :edit
    end
  end

  def destroy
    spot = Spot.find(params[:id])
    spot.destroy
    redirect_to spots_path
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
