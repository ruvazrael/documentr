class Content < ActiveRecord::Base
  validates_presence_of :title
  attr_accessible :title, :description, :content, :file, :added_by, :source, :link, :author
  belongs_to :author, :class_name => "User", :foreign_key => "author_id"
  
  def thumb_url() raise "dunno!" end
    
  
    TypesForSelect = { 
      "PDF Document" => :pdf, 
      'Plain Text' => :text, 
      "Image" => :image, 
      "Link" => :link, 
      "Crawler" => :crawler 
    }
    
end
