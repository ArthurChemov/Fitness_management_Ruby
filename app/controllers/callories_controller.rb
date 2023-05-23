class CalloriesController < ApplicationController
    def index
        @Uservar = get_auth
        if @Uservar != nil
            @Nutritvar = Nutrit.find_by(id: @Uservar.nutrit_id)
        else

        end
    end

    def calculate

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