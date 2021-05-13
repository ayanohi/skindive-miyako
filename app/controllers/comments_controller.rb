class CommentsController < ApplicationController
  before_action :authenticate_user!, except: %i[index all]
  before_action :set_spot, only: %i[index new create edit update]
  before_action :set_comment, only: %i[edit update destroy]
  before_action :no_current_user, only: %i[edit update]
  before_action :no_current_user_nor_admin, only: %i[destroy]

  def all
    @q = Comment.ransack(params[:q])
    @comments = @q.result
    @list = @comments.pluck(:visit_date)
    @list_of_years = @list.map{|y| y.year}.uniq.sort
    @list_of_months = @list.map{|m| m.month}.uniq.sort
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
    @info = "口コミを編集する"
  end

  def update
    if @comment.update(comment_params)
      redirect_to spot_comments_path
    else
      render :edit
    end
  end

  def destroy
    if @comment.destroy
      redirect_to spot_comments_path, alert: "削除しました"
    else
      render :index
    end
  end

  private
  def set_spot
    @spot = Spot.find_by(id: params[:spot_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
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

  def no_current_user
    set_comment
    redirect_to root_path unless @comment.user == current_user
  end

  def no_current_user_nor_admin
    set_comment
    redirect_to root_path unless @comment.user == current_user || current_user.admin?
  end
end
