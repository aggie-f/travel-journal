class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.date :start_date
      t.date :end_date
      t.string :destination
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
