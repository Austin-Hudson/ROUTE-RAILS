class DistanceController < ApplicationController

  def trigger_google_distance_api
     data = HTTParty.get('https://maps.googleapis.com/maps/api/distancematrix/json?origins=Vancouver+BC|Seattle&destinations=San+Francisco|Victoria+BC&key=AIzaSyDJSRrkIFuSWtW8xSBuZUxFVmwoxIAeSJ0')
     render json: data
  end
end
