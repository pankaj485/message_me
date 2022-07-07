class SessionsController < ApplicationController
  def index
    greeting = "Hello from the"
    endpoint = "session"
    route = "It is login route"
    param = params.to_s

    @message = "#{greeting} #{endpoint} #{route}. param: #{param}"
  end
end
