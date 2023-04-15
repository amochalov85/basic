class SessionsController < ApplicationController


    def destroy
      session.delete(:user_id)
      redirect_to login_path, notice: "Logged out!"
    end

end
