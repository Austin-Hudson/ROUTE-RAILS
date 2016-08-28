class DistanceController < ApplicationController

  def trigger_google_distance_api
    startPoint = params[:start]
    midPoint = params[:mid_locations]
    endPoint = params[:end]
    midString = midPoint.split("").join("|");
    puts "midpoint is #{midPoint}"
    puts "midSting is #{midString}"
     dataBM = HTTParty.get('https://maps.googleapis.com/maps/api/distancematrix/json?origins=' + startPoint + '&destinations=' + midString + '&key=AIzaSyDJSRrkIFuSWtW8xSBuZUxFVmwoxIAeSJ0')
     #
     dataMM = HTTParty.get('https://maps.googleapis.com/maps/api/distancematrix/json?origins=' + midString + '&destinations=' + midString + '&key=AIzaSyDJSRrkIFuSWtW8xSBuZUxFVmwoxIAeSJ0')

     dataME = HTTParty.get('https://maps.googleapis.com/maps/api/distancematrix/json?origins=' + midString + '&destinations=' + endPoint + '&key=AIzaSyDJSRrkIFuSWtW8xSBuZUxFVmwoxIAeSJ0')

     render json: {"BM": dataBM,
                  "MM": dataMM,
                  "ME": dataME
                  }

  end
end
