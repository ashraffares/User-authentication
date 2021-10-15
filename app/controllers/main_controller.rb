class MainController < ApplicationController
  def index
    if session[:user_id]
      @user = User.find_by(session[:user_id])
    end
  end
end
