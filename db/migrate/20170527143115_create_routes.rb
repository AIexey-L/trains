class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.string :first_station
      t.string :last_station
      t.timestamps
    end
  end
end
