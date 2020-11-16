class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(name: params[:user][:name])
        # if params[:name] == nil || params[:name].empty? || !@user.authenticate(params[:password])
        #     redirect_to '/login'
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
        else 
            redirect_to '/login'
        end
    end

end
