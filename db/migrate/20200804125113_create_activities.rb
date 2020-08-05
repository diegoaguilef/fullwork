class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.string :content
      t.string :summary
      t.string :image
      t.string :author
      t.references :tag, null: false, foreign_key: true
      t.references :equipment, null: true, foreign_key: true
      t.references :duration, null: false, foreign_key: true

      t.timestamps
    end
  end
end
