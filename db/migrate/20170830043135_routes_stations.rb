class RoutesStations < ActiveRecord::Migration[5.0]
  def change
    create_table :routes_stations do |t|
      t.integer :railway_station_id
      t.integer :route_id
      t.timestamps
    end
  end
end
