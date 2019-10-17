class PoemsController < ApplicationController

  def create
    poem = Poem.create(poem_params)
    render json: poem
  end

  def user_poems
    user = User.find(params[:id])
    poems = user.poems
    render json: poems
  end

  private

  def poem_params
    params.permit(:title, :content, :user_id)
  end

end
