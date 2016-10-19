class SearchController < ApplicationController
  def index
    response = Faraday.get("https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?limit=10&api_key=npu9eU57p3twraIEP3ib2nVxUQsOQSnX8plAcukP&location=80203&fuel_type=ELEC,LPG")
    JSON.parse(response.body)
  end
end
