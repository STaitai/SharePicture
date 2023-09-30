class PostController < ApplicationController
  def post
    @posts = Post.all.order(created_at: :desc)
  end

  def create
    @post = Post.new(postname: params[:postname], 
    picturename: params[:picturename],
    picture: nil)

    if @post.save && params[:picture]
      flash[:notice] = "投稿しました"
      @post.picture = "#{@post.id}.jpg"
      image = params[:picture]
      @post.save
      File.binwrite("public/pictures/#{@post.picture}", image.read)
      redirect_to("/share")
    else
      flash[:notice] = "作品名、ニックネーム、作品を入力、指定してください"
      redirect_to("/post")
    end
  end

end
