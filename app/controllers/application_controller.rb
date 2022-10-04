class ApplicationController < ActionController::Base
  before_action :authenticate

  attr_accessor :current_user

  def authenticate
    @current_user = User.find_by(id: session[:user_id])
  end
end
