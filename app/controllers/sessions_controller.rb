class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase, nick: params[:session][:nick])

    if user.present? # test equal password
      log_in(user)
      
      # User input and render profile user
      flash[:success] = "You log in"
      redirect_to user
    else
      # render :new # render form_field new session and print error
      flash.now[:danger] = 'Invalide email or nick combination'
      render :new
    end
  end

  def destroy
    log_out

    flash[:danger] = "You log out account"
    redirect_to root_path
  end
end