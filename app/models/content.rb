class Content < ActiveRecord::Base
  validates_presence_of :title
  attr_accessible :title, :description, :content, :file, :source, :link, :author_id, :category_id
  belongs_to :author, :class_name => "User", :foreign_key => "author_id"
  has_and_belongs_to_many :categories
  
  def thumb_url() raise "dunno!" end
    
  
    TypesForSelect = { 
      "PDF Document" => :pdf, 
      'Plain Text' => :text, 
      "Image" => :image, 
      "Link" => :link, 
      "Crawler" => :crawler 
    }
    
end
