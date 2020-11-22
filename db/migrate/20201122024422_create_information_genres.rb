class CreateInformationGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :information_genres do |t|
      t.references :information, foreign_key: true
      t.integer    :genre_id,    null: false
      t.timestamps
    end
  end
end
