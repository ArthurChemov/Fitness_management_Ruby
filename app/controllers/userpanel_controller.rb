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
        # view code here
        render "mainpage"
    end

    def trainermainpage
      @Uservar = get_auth
      @Trainervar = nil
      if @Uservar != nil
      # show different content here for authorized users
          @message = "Welcome, authorized user!"
          @Trainervar = get_trainer
          @Trainingvar = Training.find(@Uservar.training_id)
          @TrainedUsers = User.where("trainer_id = @Trainervar.id")
      else
      # show default content for unauthorized users
          @message = "Please log in to access this page."
      end
      # view code here
      render "trainermainpage"
    end

    def new
      @User = User.new
    end

    def dummypage
        render :dummypage
    end

    private

    def get_trainer
      log = cookies[:email]
      pwd = cookies[:password]
      tmpuser = Trainer.find_by(email: log)
      if tmpuser != nil
        return tmpuser
      end
    end

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