class AuthController < ApplicationController
    def authorize

    end
    def register

    end

    def set_cookie
        log = params[:email]
        pwd = params[:password]
        tmpuser = User.find_by(email: log)
        if tmpuser != nil
            if tmpuser.encrypted_password == pwd
                cookies[:email] = {
                    value: log,
                    expires: 1.hour.from_now # optional expiration time
                }
                cookies[:password] = {
                    value: pwd,
                    expires: 1.hour.from_now # optional expiration time
                }
            end
            puts "cookie changed"
            redirect_to root_path
        else
            redirect_to auth_path
        end
        
    end
end