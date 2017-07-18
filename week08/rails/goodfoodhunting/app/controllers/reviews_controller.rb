class ReviewsController < ApplicationController

  def new

  end

  def create
    review = Review.new
    review.content = params[:content]
    review.save
    
    redirect_to "/reviews/new"
  end



end
