class CreateMeasureGenerals < ActiveRecord::Migration[6.0]
  def change
    create_table :measure_generals do |t|
      t.references :measure, foreign_key: true
      t.integer :general_id, null: false
      t.timestamps
    end
  end
end
