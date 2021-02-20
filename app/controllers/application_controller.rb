class ApplicationController < ActionController::Base
  before_action :get_areas

  def get_areas
    @areas = Area.all
  end
end
