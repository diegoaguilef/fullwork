class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.references :group, null: false, foreign_key: true
      t.references :duration, null: false, foreign_key: true
      t.references :subscribable, polymorphic: true, null: false
      t.datetime :begin_date, null: false
      t.datetime :expiration_date, null: false

      t.timestamps
    end
  end
end
