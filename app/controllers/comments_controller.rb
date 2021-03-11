class CommentsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @spot = Spot.find_by(id: params[:spot_id])
    @comments = Comment.where(spot_id: params[:spot_id])
  end

  def new
    @spot = Spot.find_by(id: params[:spot_id])
    @comment = Comment.new
    @info = "口コミを書く"
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save!
      redirect_to spot_comments_path
    else
      render :news
    end
  end

  def edit
    @spot = Spot.find_by(id: params[:spot_id])
    @comment = Comment.find(params[:id])
    @info = "口コミを編集する"
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to spot_comments_path
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_to spot_comments_path, alert: "削除しました"
    else
      render :index
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
