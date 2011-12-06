class Admin::ContentsController < Admin::ApplicationController
  
  load_and_authorize_resource
  
  def index
    @contents = Content.find_for_table(params)
  end
  
  def show
    @content = Content.find(params[:id])
  end
  
  def edit
    @content = Content.find(params[:id])
  end
  
  def update
    @content = Content.find(params[:id])
    if @content.update_attributes(params[:content])
      flash[:notice] = "Updated Content"
      redirect_to admin_content_path(@content)
    else
      flash[:error] = "Sorry, this didn't work"
      render "edit"
    end  
  end
  
  def new
    @content = class_for(params[:content_type]).new()
  end
  
  def create
    @content = class_for(params[:content_type]).new(params[:content])
    if @content.save
      flash[:notice] = "Created Content"
      redirect_to admin_content_path(@content)
    else
      flash[:error] = "Sorry, this didn't work"
      render "new"
    end
  end
  
  def destroy
    @content = Content.find(params[:id])
    @content.destroy
    redirect_to(admin_contents_path)
  end
  
  private
  
  def class_for(t)
    case t
    when 'pdf' then PdfContent
    when 'text' then TextContent
    when 'image' then ImageContent
    when 'link' then LinkContent
    when 'crawler' then CrawlerContent  
    #  ...
    else raise "unknown content_type '#{t}'"
    end

    # Cool aber evil:
    # @content = "#{t.capitalize}Content".constantize

    # auch nett
    # @content = { 'pdf' => PdfContent, 'text' => TextContent, 'image' => ImageContent }[t]
  end
end