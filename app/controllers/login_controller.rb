class LoginController < ApplicationController

  def new

  end

  def create
    @user = User.find_by(:email => params[:email], :password => params[:password])
    if @user
      session[:current_user_id] = @user.id
      redirect_to "/"
    else
      redirect_to "/login", :notice => "Couldn't find the user in the database"
    end

  end

  <%
=begin %>
def logout
    User.find(session[:user_id]).destroy
    session[:user_id] = nil
  end
  <%
=end %>
end
