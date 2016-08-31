Rails.application.routes.draw do

# DISTANCE ROUTES - API
post "/distance" => "distance#trigger_google_distance_api"

#DIRECTIONS API
post '/directions' => "directions#trigger_google_directions_api"

#ROUTES
# get "/favorites"        => "routes#index"
# get "/favorite/:name"   => "routes#show"
post "/favorite/new"    => "routes#create"
# put "/favorite/:id"     => "routes#update"
# delete "/favorite/:id"  => "routes#destroy"

#STOPS
# get "/stops"              => "stops#index"
get "/stops/:id"          => "stops#show"
# post "/favorite/new"    => "routes#create"
# put "/favorite/:id"     => "routes#update"
# delete "/favorite/:id"  => "routes#destroy"

end
