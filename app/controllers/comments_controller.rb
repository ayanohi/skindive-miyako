class CommentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @comments = Comment.all
  end

  def new
    @spot = Spot.find(params[:spot_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save!
      redirect_to spot_comments_path
    else
      render :news
    end
  end

  private
  def comment_params
    params.require(:comment).permit(
      :content,
      :visit_date,
      :visit_time,
      :weather_id,
      :tide_id,
      :wind_id,
      :user_id,
      :spot_id
    )
    # .merge(user_id: current_user.id, spot_id: params[:spot_id])
  end
end
