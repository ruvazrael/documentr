class Category < ActiveRecord::Base
  mount_uploader :icon, FileUploader
  attr_accessible :title, :icon
  has_and_belongs_to_many :contents
end
