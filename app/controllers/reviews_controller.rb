class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params[:review])
    @review.house_id = params[:house_id]
    @review.user_id = current_user.id
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