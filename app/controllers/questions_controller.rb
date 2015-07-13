class QuestionsController < ApplicationController
  def new
    @question = Question.new
    2.times {@question.options.build}
  end

  def create
    @question = Question.new(question_params)
    current_user.questions.push(@question)
    if @question.save
      respond_to do |format|
      format.html {redirect_to '/'}
      format.js
      end
    else
      render :new
    end
  end


  private def question_params
    params.require(:question).permit(:description, options_attributes: [:name, :image_url])
  end

end
