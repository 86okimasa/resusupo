class CreateInformationCashlesses < ActiveRecord::Migration[6.0]
  def change
    create_table :information_cashlesses do |t|
      t.references :information,    foreign_key: true
      t.integer    :cashless_id,    null: false
      t.timestamps
    end
  end
end
