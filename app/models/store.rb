class Store < ApplicationRecord
  include Rails.application.routes.url_helpers
  belongs_to :store_type

  has_one_attached :image

  def as_json(options={})
    super().merge({
      image_url: !self.image.attached? ? "" : rails_blob_path(self.image,only_path:true),
      store_type_name: self.store_type.name      
    })
  end
end
