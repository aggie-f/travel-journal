class AddGuestToTrip < ActiveRecord::Migration[6.0]
  def change
    add_reference :trips, :guest, references: :users, index: true
    add_foreign_key :trips, :users, column: :guest_id
  end
end
