class ProverbsController < ApplicationController
  
  def index
    @proverbs = Proverb.alphabetical.paginate(:page => params[:page]).per_page(10)
  end


  def show
    @proverb = Proverb.find(params[:id])
  end


  def new
    @proverb = Proverb.new
  end


  def edit
    @proverb = Proverb.find(params[:id])
  end


  def create
    @proverb = Proverb.new(params[:proverb])
    if @proverb.save
      flash[:notice] = 'Proverb was successfully created.'
      redirect_to proverb_path(@proverb)
    else
      render :action => "new"
    end
  end


  def update
    @proverb = Proverb.find(params[:id])
    if @proverb.update_attributes(params[:proverb])
      flash[:notice] = 'Proverb was successfully updated.'
      redirect_to proverb_path(@proverb)
    else
      render :action => "edit"
    end
  end


  def destroy
    @proverb = Proverb.find(params[:id])
    @proverb.destroy
    redirect_to proverbs_path
  end
end
