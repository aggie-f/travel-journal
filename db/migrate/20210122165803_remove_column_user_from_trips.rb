class RemoveColumnUserFromTrips < ActiveRecord::Migration[6.0]
  def change
    remove_reference(:trips, :user, index: false)
  end
end
