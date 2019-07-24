class Aromatic < ApplicationRecord
  has_many :benefits
  has_one_attached :image
  def as_json(options={})
    super().merge({
        image_url: !self.image.attached? ? "" : rails_blob_path(self.image,only_path:true),
    })
  end
end
