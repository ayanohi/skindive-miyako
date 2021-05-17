class SpotsController < ApplicationController
  before_action :move_to_root, only: %i[new edit update destroy]

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
    if @spot.save!
      redirect_to spots_path
    else
      render :new
    end
  end

  def show
    @spot = Spot.find(params[:id])
    gon.spot = @spot
    gon.api = Rails.application.credentials.open_weather_api_key
  end

  def edit
    @spot = Spot.find(params[:id])
  end

  def update
    @spot = Spot.find(params[:id])
    if params[:spot][:image_ids]
      params[:spot][:image_ids].each do |image_id|
        image = @spot.images.find(image_id)
        image.purge
      end
    end
    if @spot.update_attributes(spot_params)
      flash[:success] = "編集しました"
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

  def map
    @spot = Spot.find(params[:spot_id])
    gon.spot = @spot
    gon.api = Rails.application.credentials.open_weather_api_key
  end

  private
  def spot_params
    params.require(:spot).permit(
      :name,
      :description,
      :postal_code,
      :address,
      :area_id,
      :latitude,
      :longitude,
      creature_ids: [],
      feature_ids: [],
      images: []
    )
  end

  def move_to_root
    redirect_to root_path unless user_signed_in? && current_user.admin?
  end

end
