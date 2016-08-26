Rails.application.routes.draw do

post "/distance" => "distance#trigger_google_distance_api"

end
