class SessionsController < ApplicationController
  
  def new
    # @user = User.new
    # redirect_to '/login'
  end

  def create 
    # binding.pry
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id  
    else  
      redirect_to '/login'
    end
  end 
end
