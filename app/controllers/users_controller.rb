class UsersController < ApplicationController

    def new
    end

    def create
        user = User.new(user_params)
        if valid_user
            user.save
            session[:user_id] = user.id
            # redirect_to user_homepage
        else
            redirect_to new_user_path
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

    def valid_user
        !params[:user][:name].nil? && !params[:user][:name].blank?
        !params[:user][:password].nil? && !params[:user][:password].blank?
        !params[:user][:password_confirmation].nil? && !params[:user][:password_confirmation].blank?
        params[:user][:password] == params[:user][:password_confirmation]
    end

end
