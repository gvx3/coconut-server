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
  def self.search(params={})
    data = self.all

    params[:order] ||= 'id desc'
    data = data.order(params[:order])
    data = data.limit(params[:limit]) if params[:limit].present?
    data = data.where("store_type_id=?", params[:store_type_id]) if params[:store_type_id].present?
    # data = data.first if params[:landing_type_id].present?
    data
  end
  end

