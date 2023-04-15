class AutorizationController < ApplicationController

  def create
  end

  def login
   
    user = User.find_by(email: params[:login][:email].downcase)
    
    if user && user.authenticate(params[:login][:password]) 
      session[:user_id] = user.id.to_s
      redirect_to root_path, notice: 'Successfully logged in!'
    else
      warn "Oops"
      flash.now.alert = "Incorrect email or password, try again."
      render :create
    end
  end
end

