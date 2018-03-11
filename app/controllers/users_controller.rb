class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] =  "Добро пожаловать в Beliga, #{@user.first_name}"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :second_name, :patronymic, :birthday, :email, :password, :password_confirmation)
    end
end