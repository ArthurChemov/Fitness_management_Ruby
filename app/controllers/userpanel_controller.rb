class UserpanelController < ApplicationController
    def mainpage
        @Uservar = get_auth
        if @Uservar != nil
        # show different content here for authorized users
            @message = "Welcome, authorized user!"
            @Trainervar = Trainer.find(@Uservar.trainer_id)
            @Trainingvar = Training.find(@Uservar.training_id)
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