class UsersCabinetController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @posts = @user.posts
  end

  def show
  end  

  def create_post
    @user = current_user
    @post = @user.posts.create(post_params)
    if @post.save
      redirect_to users_cabinet_path, notice: "Post was successfully created."
    else
      render :index
    end
  end

  private

  def post_params
    params.require(:post).permit(:text)
  end
end
