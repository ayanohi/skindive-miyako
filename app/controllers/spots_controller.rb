class SpotsController < ApplicationController

  def index
    @spots = Spot.all
    if @q = Spot.ransack(params[:q])
      @spots = @q.result
    end
    get_search_word(params[:q])
  end

  def get_search_word(params)
    if params == nil
      @search_word = "すべてのスポット"
    elsif params.include?("area_id_eq")
      area = Area.find(params[:area_id_eq])
      @search_word = "#{area.name}のスポット"
    elsif params.include?("creatures_id_eq")
      creature = Creature.find(params[:creatures_id_eq])
      @search_word = "#{creature.name}のスポット"
    elsif params.include?("features_id_eq")
      feature = Feature.find(params[:features_id_eq])
      @search_word = "#{feature.name}のスポット"
    else
      @search_word = "検索結果なに？"
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
      :area_id,
      :latitude,
      :longitude,
      creature_ids: [],
      feature_ids: []
    )
  end

end
