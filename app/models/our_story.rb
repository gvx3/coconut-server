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

  def self.search(params={})
    data = self.all
    data = data.where("our_story_type_id=?", params[:our_story_type_id]) if params[:our_story_type_id].present?
    # data = data.first if params[:landing_type_id].present?
    data
  end

  
end
