class Bug < ActiveRecord::Base
   attr_accessible :closed_by, :comment, :description, :priority, :status, :title
   belongs_to :user
   
   validates :user,  presence: true
   validates :title,  presence: true
   validates :status,  presence: true
   
end
