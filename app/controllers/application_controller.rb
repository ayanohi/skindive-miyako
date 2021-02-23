class ApplicationController < ActionController::Base
  before_action :get_areas
  before_action :get_creatures

  def get_areas
    @areas = Area.all
  end

  def get_creatures
    @creatures = Creature.all
  end
end
