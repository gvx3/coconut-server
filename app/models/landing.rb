class Landing < ApplicationRecord

  include Rails.application.routes.url_helpers
  belongs_to :landing_type
  has_one_attached :image

  def as_json(options={})
    super().merge({
      image_url: !self.image.attached? ? "" : rails_blob_path(self.image,only_path:true),
      landing_type_name: self.landing_type.name,
    })
  end

  def self.search(params={})
    data = self.all
    data = data.where("landing_type_id=?", params[:landing_type_id]) if params[:landing_type_id].present?
    # data = data.first if params[:landing_type_id].present?
    data
  end
end

