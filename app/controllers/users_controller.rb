class UsersController < ApplicationController

  def create
    user = User.create(user_params)
    if user.valid?
      render json: user, status: :created
    else
      render json: {messages: user.errors.full_messages}
    end

  end

  private

  def user_params
    params.permit(:name, :password)
  end

end
