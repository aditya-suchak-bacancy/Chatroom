class MessagesController < ApplicationController
  def create
    message = current_user.messages.build(params.require(:message).permit(:text))
    if message.save
      redirect_to root_path
    end
  end
end