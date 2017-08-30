class RenameRailwaystationInTrains < ActiveRecord::Migration[5.0]
  def change
    change_table :trains do |t|
      rename_column :trains, :railway_station_id, :current_station_id
    end
  end
end
