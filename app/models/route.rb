class Route < ApplicationRecord
  validates :title, presence: true
  has_many :railway_stations, through: :routes_stations
  has_many :trains
  has_many :routes_stations
end
