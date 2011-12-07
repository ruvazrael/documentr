class LinkContent < Content
  validates_presence_of :link
  validates_format_of :link, :with => /^[\w&]+:\/\/[a-z\d]+(\.[a-z\d]+)*(:\d+)?(\/.*)?$/

  before_validation do
    self.link = "http://#{link}" unless /^[\w&]+:\/\//.match(link)
  end  
  
  def thumb_url()  "link.png"
  end
  
end  
  