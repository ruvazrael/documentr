class Content < ActiveRecord::Base
 
  validates_presence_of :title
  attr_accessible :title, :description, :content, :file, :added_by, :source
  mount_uploader :file, FileUploader
  
end
