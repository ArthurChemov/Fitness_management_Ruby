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
      @user = User.new
    end

    def create
      parameters = user_params
      #place to make proper hash, not implemented atm
      @user = User.new(user_params)

      if @user.save
        redirect_to root_path
      else
        render :new
      end
    end

    def newnutrit 
      @nutrit = Nutrit.new
    end

    def addnutrition 
      @nutrit = Nutrit.new(nutrition_params)

      if @nutrit.save
        redirect_to root_path
      else
        render :newnutrit
      end
    end
    
    def newtraining
      @training = Training.new
    end

    def addtraining
      @training = Training.new(training_params)

      if @training.save
        redirect_to root_path
      else
        render :new
      end
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

    def user_params
      params.extract!(:commit, :authenticity_token)
      return params.required(:user).permit(:email, :encrypted_password, :trainer_id, :training_id, :nutrit_id, :subscription_id, :sex, :height, :weight, :tel)
    end

    def nutrition_params 
      params.extract!(:commit, :authenticity_token)
      return params.required(:nutrit).permit(:name, :description, :callories, :protein, :fats, :carbohydrates)
    end

    def training_params 
      params.extract!(:commit, :authenticity_token)
      return params.required(:training).permit(:name, :description, :rate)
    end
  end