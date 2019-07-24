class Ingredient < ApplicationRecord
  
  include Rails.application.routes.url_helpers
  belongs_to :product
  has_one_attached :image

  def as_json(option={})
    super.merge({
      image_url: !self.image.attached? ? "" : rails_blob_path(self.image,only_path:true),
    })

  end
end
