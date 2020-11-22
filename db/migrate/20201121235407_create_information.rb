class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :information do |t|
      t.references :admin,          foreign_key: true
      t.string     :shop_name,      null: false
      t.string     :phone_number,   null: false
      t.integer    :prefecture_id,  null: false
      t.string     :municipalities, null: false
      t.string     :address,        null: false
      t.string     :building
      t.string     :access,         null: false
      t.string     :business_hour,  null: false
      t.string     :holiday,        null: false
      t.integer    :budget,         null: false
      t.integer    :seat_number,    null: false
      t.integer    :tobacco_id,     null: false
      t.integer    :child_id,       null: false
      t.text       :remarks
      t.timestamps
    end
  end
end
