class Api::MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render 'api/movies/index'
  end

  def user_movies
    @movies = current_user.movies
    render 'api/movies/index'
  end

  def show
    @movie = Movie.find(params[:id])
    render 'api/movies/show'
  end

  def movie_detail
    @movie = Movie.find(params[:id])
  end

  private

  def movie_params
    params.require(:movie).permit(:id, :title, :director, :description, :image_url,
                                 :year, :rating, :youtube_url)
  end
end
