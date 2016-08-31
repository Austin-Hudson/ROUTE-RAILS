Rails.application.routes.draw do

# DISTANCE ROUTES - API
post "/distance" => "distance#trigger_google_distance_api"

#DIRECTIONS API
post '/directions' => "directions#trigger_google_directions_api"

#ROUTES
get "/saved-routes"           => "routes#index"
get "/saved-routes/:name"    => "routes#show"
post "/saved-routes/new"     => "routes#create"
# put "/favorite/:id"        => "routes#update"
# delete "/favorite/:id"     => "routes#destroy"


end
