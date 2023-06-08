class Api::V1::PostsController < Api::ApplicationController

  def index
    @post = Post.all
    render json: @post, status: :ok
  end

  def show
    render json: @post, status: :ok
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post, status: :created
    else
      render json: { errors: @post.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def update
    unless @post.update(post_params)
      render json: { errors: @post.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy
  end
end
