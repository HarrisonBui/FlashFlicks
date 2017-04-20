class Api::MovielistsController < ApplicationController

  def index
    if current_user
      @movielists = Movielist.includes(:movies).where("user_id = ?", current_user.id)
      render 'api/movielists/index'
    else
      render json: {}, status: 200
    end
  end

  def create
    @movielist = Movielist.new(movielist_params)
    @movies = Movie.all
    @movielist.user_id = current_user.id

    if @movielist.save
      render 'api/movielists/show'
    else
      render json: @movielist.errors.full_messages, status: 422
    end
  end

  def show
    @movielist = Movielist.find_by_id(params[:id])
    @movies = @movielist.movies
    if @movielist
      render :show
    else
      render(json: "Movielist not found", status: 404)
    end
  end

  def update
    @movielist = Movielist.find(params[:id])
    if @movielist.user_id == current_user.id &&
      @movielist.update_attributes(movielist_params)
      render 'api/movielists/show'
    else
      render json: @movielist.errors.full_messages, status: 401
    end
  end

  def destroy
    @movielist = Movielist.find(params[:id])
    if @movielist.user_id == current_user.id && @movielist.delete
      render @movielist
    else
      render json: ['Process not completed'], status: 400
    end
  end

  private

  def movielist_params
    params.require(:movielist).permit(:id, :title, movie_ids: [])
  end

end
