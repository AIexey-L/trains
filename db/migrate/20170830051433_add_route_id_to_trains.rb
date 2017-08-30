class AddRouteIdToTrains < ActiveRecord::Migration[5.0]
  def change
    change_table :trains do |t|
      t.integer :route_id
    end
  end
end
