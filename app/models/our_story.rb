class OurStory < ApplicationRecord

  include Rails.application.routes.url_helpers

  belongs_to :our_story_type
  has_one_attached :image
  def as_json(options={})
    super().merge({
        image_url: !self.image.attached? ? "" : rails_blob_path(self.image,only_path:true),
        our_story_type_name: self.our_story_type.name
    })
  end
end
