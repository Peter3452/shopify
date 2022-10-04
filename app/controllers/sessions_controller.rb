class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present? && @user.authenticate(params[:password])
       session[:user_id] = @user.id
       flash[:notice] = "Login successful."
       redirect_to root_path
    else
        render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have successfully logged out."
    redirect_to root_path
  end
end