class CreateAppeals < ActiveRecord::Migration[6.0]
  def change
    create_table :appeals do |t|
      t.string     :appeal_point, null: false
      t.text       :explanation,  null: false
      t.references :information,  foreign_key: true
      t.timestamps
    end
  end
end