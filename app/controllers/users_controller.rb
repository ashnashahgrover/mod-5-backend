class UsersController < ApplicationController

  def create
    user = User.create(user_params)
    if user.valid?
    render json: user, status: :created
    else
    render json: {message: "Invalid Login or Password"}
    end

  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
