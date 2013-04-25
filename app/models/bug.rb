class Bug < ActiveRecord::Base
   attr_accessible :title, :description, :status, :priority, :reported_by, :closed_by, :comment
   
   validates :title,  presence: true
   validates :status,  presence: true
   
end
