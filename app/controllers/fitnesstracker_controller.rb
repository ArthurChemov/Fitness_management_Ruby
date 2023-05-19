class FitnesstrackerController < ApplicationController
    def index
      @user = get_auth
    end
    def set_cookie
        # Get the user input from params
        user_input = params[:user_input]
      
        # Set the cookie with the user input
        cookies[:email] = {
          value: user_input,
          expires: 1.hour.from_now # optional expiration time
        }
      
        # Redirect to some other page
        redirect_to some_other_path
    end
    
    private
    def get_auth
        # Get the value of the cookie
        log = cookies[:email]
        pwd = cookies[:password]
        tmpuser = User.find_by(email: log)
        if tmpuser != nil
          if tmpuser.encrypted_password == pwd
            return tmpuser
          end
        else
          return nil
        end
    end
end