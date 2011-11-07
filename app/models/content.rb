class Content < ActiveRecord::Base
  
  validates_presence_of :title, :file
  
  
  def file=(f)
     if f.is_a?(ActionDispatch::Http::UploadedFile) or f.is_a?(File)
       self[:file] = f.read
       self.file_name = File.basename(f.original_filename)
     else
       self[:file] = f
       self.file_name ||= "Unknown"
     end
   end
end
