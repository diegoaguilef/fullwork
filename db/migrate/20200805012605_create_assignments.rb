class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.references :activity, null: false, foreign_key: true
      t.references :assignable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
