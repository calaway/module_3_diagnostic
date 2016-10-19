class SearchController < ApplicationController
  def index
    @nrel_stations = NrelStations.nearest_stations(params['q'])
  end
end
