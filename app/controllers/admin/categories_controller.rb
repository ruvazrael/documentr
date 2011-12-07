class Admin::CategoriesController < Admin::ApplicationController

    load_and_authorize_resource

    def index
      @categories = Category.find_for_table(params)
    end

    def show
      @category = Category.find(params[:id])
    end

    def edit
      @category = Category.find(params[:id])
    end

    def update
      @category = Category.find(params[:id])
      if @category.update_attributes(params[:category])
        flash[:notice] = "Updated Category"
        redirect_to admin_category_path(@category)
      else
        flash[:error] = "Sorry, this didn't work"
        render "edit"
      end  
    end

    def new
      @category = class_for(params[:category_type]).new()

    end

    def create
      @category = class_for(params[:category_type]).new(params[:category])
      if @category.save
        flash[:notice] = "Created Category"
        redirect_to admin_category_path(@category)
      else
        flash[:error] = "Sorry, this didn't work"
        render "new"
      end
    end

    def destroy
      @category = Category.find(params[:id])
      @category.destroy
      redirect_to(admin_categorys_path)
    end

  
  end
