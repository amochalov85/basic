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
end
