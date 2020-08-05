class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :group_type
      t.string :category

      t.timestamps
    end
  end
end
