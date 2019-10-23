class PoemsController < ApplicationController

  def create
    poem = Poem.create(poem_params)
    nlu_results = NLU.analyze({:html=>poem.content, :features=>{ :emotion=>{}, :sentiment=>{} } })
    nlu_string = JSON.generate(nlu_results.result)
    poem.update(nlu:nlu_string)
    nlu_json = JSON.parse(nlu_string)
    render json: {poem: poem, nlu: nlu_json}
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
