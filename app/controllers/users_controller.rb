class UsersController < ApplicationController
  def new
    if session[:current_user_id]
      redirect_to "/", :notice => "Already logged in!"
    end
  end

  def home

  end

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    # raise "Who dis?".inspect
    @user = User.new(user_params)
    @user.name = user_params[:name]
    @user.email = user_params[:email]
    @user.birthday = user_params[:birthday]
    @user.password = user_params[:password]
    @user.save
    redirect_to '/login'
  end

  def user_params
    params.permit(:name, :email, :birthday, :password)
  end

end
