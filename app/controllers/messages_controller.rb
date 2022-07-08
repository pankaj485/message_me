class MessagesController < ApplicationController
  before_action :require_user

  def create
    # create a new message based on private method, save it, redirect to root path
    message = current_user.messages.build(message_params)
    if message.save
      ActionCable.server.broadcast 'chatroom_channel', message: message_render(message)
    end
  end

  private

  # get the value of the message body from param
  def message_params
    params.require(:message).permit(:body)
  end

  def message_render(message)
    # rendering partial from controller
    # here we are rendering views/messages/_message.html.erb partial
    # as the partial also requires message object, passing it using locals method.
    render(partial: 'message', locals: { message: message })
  end

end
