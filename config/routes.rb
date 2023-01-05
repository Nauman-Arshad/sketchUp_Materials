Rails.application.routes.draw do
  get 'boards', :to => 'materials#boards'
  get 'edges', :to => 'materials#edges'
  get 'fittings', :to => 'materials#fittings'
  get 'specials', :to => 'materials#specials'
  get 'varnish', :to => 'materials#varnish'
  get 'veneer', :to => 'materials#veneer'
  get 'wood', :to => 'materials#wood'
  get 'surface', :to => 'materials#surface'
  get 'wall', :to => 'materials#wall'
  get 'floor', :to => 'materials#floor'
end
