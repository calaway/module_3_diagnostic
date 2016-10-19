class NrelStations
  attr_reader :name,
              :street_address,
              :fuel_types,
              :access_times

  def initialize(location)
    raw_json = NrelService.fetch_json(location)

    # I know this should be all, but I'm just working with the first for now.
    @name = raw_json["fuel_stations"].first["station_name"]
    @street_address = raw_json["fuel_stations"].first["street_address"]
    @fuel_types = raw_json["fuel_stations"].first["fuel_type_code"]
    @access_times = raw_json["fuel_stations"].first["access_days_time"]
  end

  def self.nearest_stations(location)
    NrelStations.new(location)
  end
end
