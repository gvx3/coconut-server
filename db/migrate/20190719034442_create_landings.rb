class CreateLandings < ActiveRecord::Migration[5.2]
  def change
    create_table :landings do |t|
      t.string :title
      t.string :description
      t.references :landing_type, foreign_key: true

      t.timestamps
    end
  end
end
