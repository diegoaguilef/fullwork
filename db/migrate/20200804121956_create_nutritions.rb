class CreateNutritions < ActiveRecord::Migration[6.0]
  def change
    create_table :nutritions do |t|
      t.string :nutrition_type
      t.string :diet

      t.timestamps
    end
  end
end
