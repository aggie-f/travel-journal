class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.text :content
      t.float :latitude
      t.float :longitude
      t.string :location
      t.date :date
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
