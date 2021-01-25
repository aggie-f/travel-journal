class RemoveUserFromTrips < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :trips, column: :user_id
  end
end
