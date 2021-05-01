class CommentsController < ApplicationController
  before_action :authenticate_user!, except: %i[index]
  before_action :set_comment, only: %i[index new create edit update]

  def all
    @q = Comment.ransack(params[:q])
    @comments = @q.result
    # @list_of_years = @comments.pluck(:visit_date).map{|y| y.year}.uniq.sort
    @list_of_years = ["2019", "2020", "2021"]
  end

  def index
    @comments = Comment.where(spot_id: params[:spot_id])
  end

  def new
    @comment = Comment.new
    @info = "口コミを書く"
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to spot_comments_path
    else
      render :new
    end
  end

  def edit
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
  def set_comment
    @spot = Spot.find_by(id: params[:spot_id])
  end

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
