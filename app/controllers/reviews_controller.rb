class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params[:review])
    @review.house_id = params[:house_id]
    @review.stars = params[:stars]
    @review.user_id = current_user.id
    @review.user = current_user
    @review.funny_flag = false
    @review.useful_flag = false
    if @review.save
      redirect_to House.find(@review.house_id)
    else
      render 'new'
    end
  end

  def index

  end

  def show

  end
end