class OptionsController<ApplicationController
  def new
    @option = Option.new
  end

  def update
    @option = Option.find(params[:id])
    @option.votes+=1
    @option.save
    redirect_to '/'
  end

end
