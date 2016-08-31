class DirectionsController < ApplicationController

  def trigger_google_directions_api

    route = params[:route]
    start = route[0]
    destination = route[-1]

    waypoints = ""
    route[1..-2].each do |data|
      waypoints = waypoints + data + "|"
    end

    if waypoints[-1] == '|'
      waypoints[-1] = ""
    end

    directions = HTTParty.get('https://maps.googleapis.com/maps/api/directions/json?origin=' + start +'&destination=' + destination + '&waypoints=optimize:true|' + waypoints + '&key=AIzaSyBX2cO5_TjrVu9Ept1pNxMUSZUoiBolRUo')

    render json: directions
  end
end
