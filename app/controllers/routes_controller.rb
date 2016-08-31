class RoutesController < ApplicationController

  def index
  end

  def show
  end

  def create
    new_route = Route.new(name: params[:name])
    if new_route.save
      render json: new_route
    else # otherwise render an error because we messed up.
      render json: {'error': new_route.errors}
    end
  end

  def update
  end

  def destroy
  end

end
