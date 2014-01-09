class StopsController < ApplicationController
  def index
    @stop = Stop.first

    render json: @stop
  end
end
