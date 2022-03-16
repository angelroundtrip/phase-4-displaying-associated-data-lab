class UsersController < ApplicationController

  # GET /users/:id
  def show
    user = find_user
    render json: user, include: :items
  end

  private

  def find_user
    User.find(params[:id])
  end

end
