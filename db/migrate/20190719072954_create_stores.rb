class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :title
      t.string :description
      t.string :url
      t.references :store_type, foreign_key: true

      t.timestamps
    end
  end
end
