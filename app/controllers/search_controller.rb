class SearchController < ApplicationController
  def index
    @nrel_data = NrelStations.nearest_stations(params['q'])
    render json: @nrel_data
  end
end
