class PagesController < ApplicationController

  
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find_by_name(params[:name])
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(params[:page])
      flash[:notice] = "Updated Page"
      redirect_to page_path(@page)
    else
      flash[:error] = "Sorry, this didn't work"
      render "edit"
    end  
  end

  def new
      @page = Page.new()
  end

  def create
      @page = Page.new(params[:page])
      if @page.save
        flash[:notice] = "Created Page"
        redirect_to page_path(@page)
      else
        flash[:error] = "Sorry, this didn't work"
        render "new"
      end
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to(pages_path)
  end

  end 
 
 


