Rails.application.routes.draw do

# DISTANCE ROUTES - API
post "/distance" => "distance#trigger_google_distance_api"

#FAVORITE ROUTES
get "/favorite"         => "routes#index"
get "/favorite/:name"   => "routes#show"
post "/favorite/new"    => "routes#create"
put "/favorite/:id"     => "routes#update"
delete "/favorite/:id"  => "routes#destroy"

end
