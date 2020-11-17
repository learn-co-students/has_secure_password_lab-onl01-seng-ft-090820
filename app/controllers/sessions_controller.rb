class SessionsController < ApplicationController

    def login
        @user = User.new
    end

    def create
        user = User.find_by(name: params[:user][:name])
        if user
            if user.authenticate(params[:user][:password])
                session[:user_id] = user.id
                redirect_to root_path
            else
                redirect_to login_path
            end
        else
            redirect_to login_path
        end
    end

end