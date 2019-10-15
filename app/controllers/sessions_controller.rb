class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: login_params[:name])
    if user && user.authenticate(login_params[:password])
      render json: user, status: :accepted
    else
      render json: {messages: ["Invalid Username or Password! Please try again!"]}, status: :unauthorized
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end

  def login_params
    params.permit(:name, :password)
  end

end
