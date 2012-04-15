class PhotosController < ApplicationController
  
  def index
    @photos = Photo.alphabetical.paginate(:page => params[:page]).per_page(5)
  end


  def show
    @photo = Photo.find(params[:id])
  end


  def new
    @photo = Photo.new
  end


  def edit
    @photo = Photo.find(params[:id])
  end


  def create
    @photo = Photo.new(params[:photo])
    if @photo.save
      flash[:notice] = 'Photo was successfully created.'
      redirect_to photo_path(@photo)
    else
      render :action => "new"
    end
  end


  def update
    @photo = Photo.find(params[:id])
    if @photo.update_attributes(params[:photo])
      flash[:notice] = 'Photo was successfully updated.'
      redirect_to photo_path(@photo)
    else
      render :action => "edit"
    end
  end


  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path
  end
end
