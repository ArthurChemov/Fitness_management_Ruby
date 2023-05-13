class FitnesstrackerController < ApplicationController
    def index
      @users = User.all
      @user = @users.first!
    end
    def set_cookie
        # Get the user input from params
        user_input = params[:user_input]
      
        # Set the cookie with the user input
        cookies[:my_cookie] = {
          value: user_input,
          expires: 1.hour.from_now # optional expiration time
        }
      
        # Redirect to some other page
        redirect_to some_other_path
    end
    def get_cookie
        # Get the value of the cookie
        my_cookie_value = cookies[:my_cookie]
        return my_cookie_value
      end
end