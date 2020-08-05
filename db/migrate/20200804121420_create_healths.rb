class CreateHealths < ActiveRecord::Migration[6.0]
  def change
    create_table :healths do |t|
      t.string :health_type

      t.timestamps
    end
  end
end
