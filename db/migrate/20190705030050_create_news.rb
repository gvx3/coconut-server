class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :title
      t.string :description
      t.string :description_details
      
      t.references :user, foreign_key: true
      t.references :new_type, foreign_key: true
      
      t.timestamps
    end
  end
end
