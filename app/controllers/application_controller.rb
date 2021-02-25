class ApplicationController < ActionController::Base
  before_action :get_spots
  before_action :get_areas
  before_action :get_creatures
  before_action :get_features

  def get_spots
    @spots = Spot.all
  end

  def get_areas
    @areas = Area.all
  end

  def get_creatures
    @creatures = Creature.all
  end

  def get_features
    @features = Feature.all
  end
end
