class Api::MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render 'api/movies/index'
  end

  def movie_detail
    @movie = Movie.find(params[:id])
    render 'api/movies/movie_detail'
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :director, :description, :image_url,
                                 :year, :rating, :youtube_url)
  end
end
