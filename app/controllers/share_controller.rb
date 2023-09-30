class ShareController < ApplicationController

  def share
    @pictures = Post.all.order(created_at: :desc)
    
  end

  def show
    @post_show = Post.find_by(id: params[:id])
  end

  def search
    @searches = Post.where(picturename: params[:search])
  end
end