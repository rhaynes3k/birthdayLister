class LoginController < ApplicationController

  def new

  end

  def create
    @user = User.find_by(:email => params[:email])
    if @user
      raise "login".inspect
    else
      redirect_to "/login", :notice => "Couldn't find the user in the database"
    end

  end

end
