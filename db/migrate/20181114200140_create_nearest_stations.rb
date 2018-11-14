class CreateNearestStations < ActiveRecord::Migration[5.0]
  def change
    create_table :nearest_stations do |t|
      t.string :route_name, limit: 30, null: false
      t.string :station_name, limite:30, null:false
      t.integer :minute_walk, limit: 3
      t.references :feed, foreign_key: true

      t.timestamps
    end
  end
end
