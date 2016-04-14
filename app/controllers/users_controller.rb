class UsersController < ApplicationController
  def index
    @users = User.all
    flash[:errors] = "Incorrect Login"
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params_check)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def show
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def params_check
    params.require(:user).permit(:username, :email, :password_digest, :password_confirmation)
  end
end
