class News < ApplicationRecord
  
  include Rails.application.routes.url_helpers
  belongs_to :user
  belongs_to :new_type

  has_one_attached :image

  def as_json(options={})
    super().merge({
      image_url: !self.image.attached? ? "" : rails_blob_path(self.image,only_path:true),
      new_type_name: self.new_type.name,
      username: self.user.username     
    })
  end

  def self.search(params={})

    data = self.all

    data = data.select %{
      id, title, description, new_type_id, created_at, updated_at
    }

    # params[:order] ||= 'id desc'
    data = data.order(params[:order])
    data = data.limit(params[:limit]) if params[:limit].present?
    data = data.offset(params[:offset]) if params[:offset].present?

    sql = ActiveRecord::Base.connection.execute(data.to_sql)
    
    
    sql.to_a.each do |i|
      s = self.find(i["id"])
      i["username"] = s.user.username
      i["new_type_name"] = s.new_type.name
      i["image_url"] = s.image_url
    end
    
  end

  def image_url
    rails_blob_path(self.image,only_path:true) if self.image.attached?
  end
  
end
