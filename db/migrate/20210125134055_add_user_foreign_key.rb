class AddUserForeignKey < ActiveRecord::Migration[6.0]
  def change
    add_reference :trips, :owner, references: :users, index: true
    add_foreign_key :trips, :users, column: :owner_id
  end
end
