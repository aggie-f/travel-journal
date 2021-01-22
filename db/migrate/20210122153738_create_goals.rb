class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :question
      t.text :answer
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
