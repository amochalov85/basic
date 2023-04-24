class PostsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy, :likes, :dislikes]

  def index
      @posts = Post.all
  end

  def show
      @posts = Post.find(params[:id])
  end

  def likes
    @posts = Post.find(params[:id])
    @posts.likes.create if @post
    redirect_to @posts
  end

  def dislikes
    @posts = Post.find(params[:id])
    @posts.dislikes.create if @post
    redirect_to @posts
  end

  def create
    Post.create(
        text: params[:posts][:text],
        user: current_user)
    redirect_to users_cabinet_path
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.user == current_user
      @post.delete
      redirect_to users_cabinet_path, notice: 'Post has been deleted'
    else
      redirect_to root_path, alert: 'You are not authorized to delete this post'
    end
  end

def edit
    puts(params)
    @post = Post.find(params[:id])
end

def update
    @post = Post.find(params[:id])
    @post.update(text: params[:post][:text])
    redirect_to users_cabinet_path
end
end
