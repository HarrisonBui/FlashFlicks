class Api::UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if @user.save
      login(@user)
      Movielist.create(title: 'Watched', user_id: @user.id)
      Movielist.create(title: 'Want to Watch', user_id: @user.id)
      Movielist.create(title: 'Favorites', user_id: @user.id)
      render "api/users/show"
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
