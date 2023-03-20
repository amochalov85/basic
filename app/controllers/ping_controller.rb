class PingController < ActionController::Base
    def index
        render :json => { status: :alive, users_count: User.count }
    end
end