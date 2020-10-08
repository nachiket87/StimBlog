class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
    @messag = Messag.new # don't know why I have this here
  end

  def show
    @chatroom = Chatroom.find(params[:id])
  end
end
