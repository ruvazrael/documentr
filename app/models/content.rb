class Content < ActiveRecord::Base
  
  validates_presence_of :title
  
  mount_uploader :file, FileUploader
  
end
