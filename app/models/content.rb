class Content < ActiveRecord::Base
  load_and_authorize_resource
  validates_presence_of :title
  attr_accessible :title, :description, :content, :file, :added_by, :source
  mount_uploader :file, FileUploader
  
end
