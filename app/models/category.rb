class Category < ActiveRecord::Base
  mount_uploader :file
  attr_accessible :title, :icon
  has_and_belongs_to_many :content
end