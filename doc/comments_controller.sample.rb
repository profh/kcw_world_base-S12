class CommentsController < ApplicationController
  
  def index
    @commentable = find_commentable
    @comments = @commentable.comments
  end
  
  def show
    @comment = Comment.find(params[:id])
  end
  
  def new
    @comment = Comment.new
  end
  
  def create
    @commentable = find_commentable
    @comment = @commentable.comments.build(params[:comment])
    if @comment.save
      flash[:notice] = "Successfully created comment."
      # We'd like to go back to the page where the comment was made.  To 
      # do this we need to know what type of item we were commenting on 
      # and what particular item was being commented.
      commenting_on = @comment.commentable_type.pluralize
      id = @comment.commentable_id
      # until the asset pipeline came along, the following worked well to get there:
      # redirect_to :controller => commenting_on, :action => 'show', :id => id
      # instead, we will simply use the following eval hack to go back to the page:
      eval "redirect_to #{@comment.commentable_type.downcase}_path(:id=>#{id})"
    else
      render :action => 'new'
    end
  end
  
  def edit
    @comment = Comment.find(params[:id])
  end
  
  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(params[:comment])
      flash[:notice] = "Successfully updated comment."
      redirect_to @comment
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Successfully destroyed comment."
    redirect_to comments_url
  end
    
  private
  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end  
end
