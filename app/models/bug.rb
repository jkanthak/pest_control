class Bug < ActiveRecord::Base
   attr_accessible :title, :description, :status, :priority, :reported_by, :closed_by, :comment, :screenshot, :image_file_name, :image_content_type, :image_file_size, :image_updated_at
   has_attached_file :screenshot,
                     :url => "/assets/images/screenshots/:attachment/:id/:style/:basename.:extension",
                     :path => ":rails_root/public/assets/images/screenshots/:attachment/:id/:style/:basename.:extension"
   
   validates :title,  presence: true
   validates :status,  presence: true
   
end
