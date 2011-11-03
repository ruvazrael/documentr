class ContentsController < ApplicationController

    protect_from_forgery
  def index
    @contents = Content.all
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
      redirect_to content_path(@content)
    else
      flash[:error] = "Sorry, this didn't work"
      render "edit"
    end  
  end
  
  def new
      @content = Content.new()
  end
  
  def create
      @content = Content.new(params[:content])
      if @content.save
        flash[:notice] = "Created Content"
        redirect_to content_path(@content)
      else
        flash[:error] = "Sorry, this didn't work"
        render "new"
      end
  end
  
  def destroy
    @content = Content.find(params[:id])
    @content.destroy
    redirect_to(contents_path)
  end
  
  def download
    @content = Content.find(params[:id])
    send_data(@content.file, :filename => @content.file_name)
  end  
end    