class CategoriesController < ApplicationController
  
  def index
    @categories = Category.alphabetical.paginate(:page => params[:page]).per_page(10)
  end


  def show
    @category = Category.find(params[:id])
  end


  def new
    @category = Category.new
  end


  def edit
    @category = Category.find(params[:id])
  end


  def create
    @category = Category.new(params[:category])
    if @category.save
      flash[:notice] = 'Category was successfully created.'
      redirect_to category_path(@category)
    else
      render :action => "new"
    end
  end


  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      flash[:notice] = 'Category was successfully updated.'
      redirect_to category_path(@category)
    else
      render :action => "edit"
    end
  end


  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end
end
