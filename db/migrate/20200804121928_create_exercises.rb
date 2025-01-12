class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :target
      t.string :level
      t.references :style, null: false, foreign_key: true

      t.timestamps
    end
  end
end
