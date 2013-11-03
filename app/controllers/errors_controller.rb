class ErrorsController < ApplicationController
  
  def show
    @exception = env["action_dispatch.exception"]
    add_crumb "#{request.path[1..-1] } - Status Code"
    respond_to do |format|
      format.html { render action: request.path[1..-1] }
      format.json { render json: {status: request.path[1..-1], error: @exception.message}}
    end
  end

end