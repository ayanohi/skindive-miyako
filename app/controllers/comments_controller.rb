class CommentsController < ApplicationController
  before_action :authenticate_user!

  def new
    @spot = Spot.find(params[:spot_id])
    @comment = Comment.new
  end
end
