class CommentsController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @question = Question.find(params[:question_id])
    @comment.update(question_id: @question.id)
    current_user.comments.push(@comment)
    if @comment.save
      respond_to do |format|
        format.html {redirect_to '/'}
        format.js

      end
    else
      render :new
    end
  end


  private def comment_params
    params.require(:comment).permit(:content)
  end

end
