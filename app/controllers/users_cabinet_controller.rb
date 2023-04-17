class UsersCabinetController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @posts = @user.posts
  end

  def show
  end  
end
