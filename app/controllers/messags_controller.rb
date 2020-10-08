class MessagsController < ApplicationController

  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @messag = @chatroom.messags.create(messag_params)
    redirect_to chatroom_path(@chatroom)
  end

  private

  def messag_params
    params.require(:messag).permit(:content)
  end
end
