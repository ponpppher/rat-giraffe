class ChangeColumnToNearestStations < ActiveRecord::Migration[5.0]
  def change
    change_column :nearest_stations, :minute_walk, :integer, limit: 3, null: false, default: 0
  end
end
