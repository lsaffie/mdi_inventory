ActionController::Routing::Routes.draw do |map|
  map.resources :rate_plans
  map.resources :carriers
  map.resources :purchasers
  map.resources :users
  map.resource :session
  map.resources :searches
  map.resources :pairs
  map.resources :owners
  map.resources :events
  map.resources :studies
  map.resources :types
  map.resources :models
  map.resources :makers
  map.resources :devices, :has_many => [:events, :pairs]
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'  
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.root :controller => "devices"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
