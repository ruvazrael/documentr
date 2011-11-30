class ImageContent < Content
  validates_presence_of :file
  mount_uploader :file, FileUploader # ImageUploader ?
  
  def thumb_url() file_url(:thumb) end
  
end