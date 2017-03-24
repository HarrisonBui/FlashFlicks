class Api::ReviewsController < ApplicationController

  def index
    @reviews = Review.where(movie_id: params[:movie_id]).includes(:user)
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      @movie = Movie.find(@review.movie_id)
      render "api/movies/show"
    else
      render json: @review.errors, status: 422
    end
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      @movie = Movie.find(@review.movie_id)
      render "api/movies/show"
    else
      render json: @review.errors, status: 422
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    @movie = Movie.find(@review.movie_id)
    render "api/movies/show"
  end

  private
  def review_params
    params.require(:@review).permit(:movie_id, :body)
  end
end
