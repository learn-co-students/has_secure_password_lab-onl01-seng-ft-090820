class UsersController < ApplicationController

    def index 
    end

    def new
        render :new
    end

    def create
       @user = User.create(user_params)
        if params[:user][:password] != params[:user][:password_confirmation]
            redirect_to '/signup'
        else
        session[:user_id] = @user.id
        end
    end

    private

    def user_params 
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
