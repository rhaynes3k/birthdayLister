class UsersController < ApplicationController
  def new

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
    @user.save
    redirect_to user_path(@user)
  end

  def user_params
    params.permit(:name, :email, :birthday)
  end

end
