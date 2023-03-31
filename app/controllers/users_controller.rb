class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]

  # GET /articles/new
  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)

    if @user.save
      log_in(@user)
      redirect_to user_path(@user), notice: "user was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "Update complete"
    else
      render :edit, notice: "Update uncomplete"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:nick, :email, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
