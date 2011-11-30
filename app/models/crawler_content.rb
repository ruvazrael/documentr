class CrawlerContent < Content
  validates_presence_of :link
  validates_presence_of :file
  mount_uploader :file, FileUploader # ???
  
  def thumb_url() "C" end
  
end