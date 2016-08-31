class StopsController < ApplicationController

  def index
  end

  def show
    stop = Stop.where(route_id: params[:route_id])
    render json: stop
  end

  def create
  end

  def update
  end

  def destroy
  end
end
