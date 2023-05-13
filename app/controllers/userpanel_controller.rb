class UserpanelController < ApplicationController
    before_action :authorize_user
    @@authorizedstate = false
    def mainpage
        if @@authorizedstate
        # show different content here for authorized users
            @message = "Welcome, authorized user!"
        else
        # show default content for unauthorized users
            @message = "Please log in to access this page."
        end
        # your index view code here
        render "mainpage"
    end

    def dummypage
        render :dummypage
    end

    private

    def authorize_user
        @current_user = User.find_by(id: cookies.signed[:user_id])
        unless @current_user && @current_user.authorized?
        end
        if !@current_user.nil?
            redirect_to root_path, alert: "You are not authorized to access this page"
        else
            @@authorizedstate = true
        end
    end

    def current_user
        @current_user
    end
end