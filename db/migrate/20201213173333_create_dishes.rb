class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string     :cooking_name  , null: false
      t.text       :cooking_detail, null: false
      t.references :information,    foreign_key: true
      t.timestamps
    end
  end
end
