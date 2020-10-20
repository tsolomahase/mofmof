class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :rail_way_line
      t.string :station_name
      t.string :minutes_walk
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
