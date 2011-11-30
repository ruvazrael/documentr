class Content < ActiveRecord::Base
  validates_presence_of :title
  attr_accessible :title, :description, :content, :file, :added_by, :source

  def thumb_url() raise "dunno!" end

end
