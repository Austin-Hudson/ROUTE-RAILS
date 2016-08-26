Rails.application.routes.draw do

get "/distance" => "distance#trigger_google_distance_api"

end
