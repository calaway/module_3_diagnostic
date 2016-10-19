class NrelStations
  def initialize(location)
    raw_json = NrelService.fetch_json
    require "pry"; binding.pry
  end

  def self.nearest_stations(location)
    NrelStations.new(location)
  end
end
