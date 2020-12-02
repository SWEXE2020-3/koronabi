class ApplicationController < ActionController::Base
    private
    def current_user
        if session[:login_uname]
            User.find_by(uname: session[:login_uname])
        end
    end
    helper_method :current_user
end
