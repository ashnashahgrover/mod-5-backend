class UsersController < ApplicationController

  def create
    user = User.create(user_params)
    if !user.valid?
      return render json: {messages: user.errors.full_messages}
    end
    render json: user, status: :created
  end

  private

  def user_params
    params.permit(:name, :password)
  end

end
