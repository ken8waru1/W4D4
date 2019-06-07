class UsersController < ApplicationController
  def new
    render :new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to user_url(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find_by(id: params[:id])

    if @user
      render :show
    else
      redirect_to new_session_url
    end
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end
end