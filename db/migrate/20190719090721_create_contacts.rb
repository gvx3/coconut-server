class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :address
      t.string :phone
      t.string :mail
      t.string :facebook_url
      t.string :twitter_url
      t.string :line_url
      t.string :instagram_url

      t.timestamps
    end
  end
end
