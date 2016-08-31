class RoutesController < ApplicationController

  def index
    routes = Route.all
    render json: routes
  end

  def show
    route = Route.where(name: params[:name])
    render json: route
  end

  def create
    puts "PPPPPPAAARRRMS", params
    name = params[:name];
    shortest_path = params[:shortest_path];
    shortest_path_str = ""

    shortest_path.each do |el|
      shortest_path_str += el + "|"
    end

    shortest_path_str[-1] = ""

    new_route = Route.new(name: params[:name], shortest_path: shortest_path_str)
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
