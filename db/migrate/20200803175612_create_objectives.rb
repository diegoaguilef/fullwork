class CreateObjectives < ActiveRecord::Migration[6.0]
  def change
    create_table :objectives do |t|
      t.boolean :weight_loss, null: false, default: false
      t.boolean :gain_mass, null: false, default: false
      t.boolean :tuning, null: false, default: false
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
