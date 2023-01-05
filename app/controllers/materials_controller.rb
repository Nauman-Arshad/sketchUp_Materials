class MaterialsController < ApplicationController
  include MaterialConcern

  def boards
    url = URI("https://sales.cadt365.com/api/masterData/material/viewGroup/board")
    @parsed = request_data(url)
    # render :json => render_to_string(:action => 'index', :layout => false)
  end

  def edges
    url = URI("https://sales.cadt365.com/api/masterData/material/viewGroup/edge")
    @parsed = request_data(url)
  end

  def fittings
    url = URI("https://sales.cadt365.com/api/masterData/material/viewGroup/fitting")
    @parsed = request_data(url)
  end

  def specials
    url = URI("https://sales.cadt365.com/api/masterData/material/viewGroup/special")
    @parsed = request_data(url)
  end

  def varnish
    url = URI("https://sales.cadt365.com/api/masterData/material/viewGroup/varnish")
    @parsed = request_data(url)
  end

  def veneer
    url = URI("https://sales.cadt365.com/api/masterData/material/viewGroup/veneer")
    @parsed = request_data(url)
  end

  def wood
    url = URI("https://sales.cadt365.com/api/masterData/material/viewGroup/wood")
    @parsed = request_data(url)
  end

  def surface
    url = URI("https://sales.cadt365.com/api/masterData/material/viewGroup/surface")
    @parsed = request_data(url)
  end

  def wall
    url = URI("https://sales.cadt365.com/api/masterData/material/viewGroup/wall")
    @parsed = request_data(url)
  end

  def floor
    url = URI("https://sales.cadt365.com/api/masterData/material/viewGroup/floor")
    @parsed = request_data(url)
  end
end
