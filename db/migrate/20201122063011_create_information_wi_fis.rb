class CreateInformationWiFis < ActiveRecord::Migration[6.0]
  def change
    create_table :information_wi_fis do |t|
      t.references :information,    foreign_key: true
      t.integer    :wi_fi_id,       null: false
      t.timestamps
    end
  end
end
