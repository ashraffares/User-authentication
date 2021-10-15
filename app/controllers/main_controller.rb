class MainController < ApplicationController
  def index
    flash[:notice] = 'Loged in successfully'
    flash[:alert] = 'Invalid email or password'
  end
end
