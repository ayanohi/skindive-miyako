class ApplicationController < ActionController::Base
  def index
    @areas = Area.all
  end
end
