class Api::MovielistsController < ApplicationController

  def index
    @movielists = Movielist.where("user_id = #{current_user.id}")
  end

  def create
    @movielist = Movielist.new(movielist_params)
    @movies = Movie.all
    @movielist.user_id = current_user.id

    if @movielist = Movielist.where("user_id = #{current_user.id}")
      render 'api/movielists/index'
    else
      render json: @movielist.errors.full_messages, status: 422
    end
  end

  def destroy
    @movielist = Movielist.find(params[:id])
    id = @movielist.id
    title = @movelist.title
    @movielist.destroy
    render json: { id: id, title: title }
  end

  private

  def movielist_params
    params.require(:movielist).permit(:title)
  end
  
end
