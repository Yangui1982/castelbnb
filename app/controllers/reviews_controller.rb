class ReviewsController < ApplicationController
  before_action :set_review, only: [:new, :create, :index]


  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @castle = Castle.find(params[:castle_id])
    @review.castle = @castle
    if @review.save
      redirect_to castle_path(@castle)
    else
      render :new
    end
  end


  private

  def set_review
    @review = Review.find(params[:id])
  end

  def set_castle
    @castle = Castle.find(params[:castle_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating, :castle_id)
  end
end
