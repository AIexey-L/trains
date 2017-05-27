class Route < ApplicationRecord
  validates :first_station, presence: true
  validates :last_station, presence: true
end