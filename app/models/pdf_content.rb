class PdfContent < Content
  validates_presence_of :file
  mount_uploader :file, FileUploader # PdfUploader?

  def thumb_url() "pdf.png" end

end  