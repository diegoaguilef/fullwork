class CreateDurations < ActiveRecord::Migration[6.0]
  def change
    create_table :durations do |t|
      t.string :duration_type
      t.integer :period

      t.timestamps
    end
  end
end
