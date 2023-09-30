class ShareController < ApplicationController

  def share
    @pictures = Post.all.order(created_at: :desc)
  end

  def show
    @post_show = Post.find_by(id: params[:id])
  end

  def search
    if params[:select] == "ニックネーム"
      @searches = Post.where("postname like ?", "%#{params[:search]}%").order(created_at: :desc)
      @name = "ニックネーム"
    else
      @searches = Post.where("picturename like ?", "%#{params[:search]}%").order(created_at: :desc)
      @name = "作品名"
    end
  end
end