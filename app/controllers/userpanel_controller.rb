class UserpanelController < ApplicationController
    before_action :authorize_user

    def mainpage
        if current_user.authorized?
        # show different content here for authorized users
        @message = "Welcome, authorized user!"
        else
        # show default content for unauthorized users
        @message = "Please log in to access this page."
        end
        # your index view code here
    end

    def dummypage

    end

    private

    def authorize_user
        @current_user = User.find_by(id: cookies.signed[:user_id])
        unless @current_user && @current_user.authorized?
        redirect_to root_path, alert: "You are not authorized to access this page"
        end
    end

    def current_user
        @current_user
    end
end