class CreateMeasures < ActiveRecord::Migration[6.0]
  def change
    create_table :measures do |t|
      t.text :content,  null: false
      t.references :information,  foreign_key: true
      t.timestamps
    end
  end
end
