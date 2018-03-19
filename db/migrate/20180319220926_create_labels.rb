class CreateLabels < ActiveRecord::Migration[5.1]
  def change
    create_table :labels do |t|
      t.float :width, null: false
      t.float :length, null: false
      t.float :height, null: false
      t.float :weight, null: false
      t.float :value
      t.text :description
      t.timestamps
    end
  end
end
