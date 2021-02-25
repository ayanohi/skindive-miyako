class ApplicationController < ActionController::Base
  before_action :get_spots
  before_action :get_areas
  before_action :get_creatures
  before_action :get_features
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

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

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i(name admin))
    devise_parameter_sanitizer.permit(:account_update, keys: %i(name image introduction pb sns))
  end
end
