class LinkContent < Content
  validates_presence_of :link
  
  def thumb_url()  "link.png"
  end
  
end  
  