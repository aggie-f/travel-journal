class DropTrips < ActiveRecord::Migration[6.0]
  def change
    drop_table :trips
  end
end
