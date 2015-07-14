class OptionsController<ApplicationController
  def new
    @option = Option.new
  end

  def update
    @option = Option.find(params[:id])
    @question = Question.find(@option.question_id)
    @option.votes+=1
    @option.save
    respond_to do |format|
      format.html { redirect_to '/' }
      format.js
    end
  end

end
