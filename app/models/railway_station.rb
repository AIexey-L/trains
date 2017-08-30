class RailwayStation < ApplicationRecord
  has_many :routes_stations
  has_many :routes, through: :routes_stations
  has_many :trains, foreign_key: :current_station_id
end
