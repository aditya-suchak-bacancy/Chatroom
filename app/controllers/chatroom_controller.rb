class ChatroomController < ApplicationController
  

  def index
    @message = Message.new
    @messages = Message.last(20)
  end
end
