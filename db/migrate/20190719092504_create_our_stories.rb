class CreateOurStories < ActiveRecord::Migration[5.2]
  def change
    create_table :our_stories do |t|
      t.string :title
      t.string :description
      t.references :our_story_type, foreign_key: true

      t.timestamps
    end
  end
end
