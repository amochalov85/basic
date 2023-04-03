class PostsController < ActionController::Base
  def index
    @posts = Post.all
  end

  def show
    @posts = Post.find(params[:id])
  end
end