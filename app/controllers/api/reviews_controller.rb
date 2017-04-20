class Api::ReviewsController < ApplicationController

  def index
    @reviews = Review.includes(:user).where('movie_id = ?', params[:movie_id])
    render 'api/reviews/index'
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      render "api/reviews/show"
    else
      render json: @review.errors, status: 422
    end
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      @movie = Movie.find(@review.movie_id)
      render "api/reviews/show"
    else
      render json: @review.errors, status: 422
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    @movie = Movie.find(@review.movie_id)
    render @review
  end

  private
  def review_params
    params.require(:review).permit(:movie_id, :body, :rating)
  end
end
