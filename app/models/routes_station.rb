class RoutesStation < ApplicationRecord
  belongs_to :route
  belongs_to :railway_station
end
