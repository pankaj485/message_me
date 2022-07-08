class MessagesController < ApplicationController
  before_action :require_user

  def create
    # create a new message based on private method, save it, redirect to root path
    message = current_user.messages.build(message_params)
    if message.save
      redirect_to root_path
    end
  end

  private

  # get the value of the message body from param
  def message_params
    params.require(:message).permit(:body)
  end
end
