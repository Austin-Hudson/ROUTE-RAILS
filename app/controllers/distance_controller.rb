class DistanceController < ApplicationController

  def trigger_google_distance_api
    startPoint = params[:start]
    endPoint = params[:end]
     data = HTTParty.get('https://maps.googleapis.com/maps/api/distancematrix/json?origins=' + startPoint + '&destinations=' + endPoint + '&key=AIzaSyDJSRrkIFuSWtW8xSBuZUxFVmwoxIAeSJ0')
     render json: data
  end
end
