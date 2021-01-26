class RemoveGuestFromTrips < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :trips, column: :guest_id
    remove_column :trips, :guest_id
  end
end
