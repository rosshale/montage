class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def create
    @post = Post.new params[:post]
    if @post.save
      redirect_to posts_path
    else
      render :action => "new"
    end
  end

end
