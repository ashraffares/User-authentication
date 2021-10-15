class PasswordResetController < ApplicationController
  def new; end

  def create
    @user = User.find_by(email: params[:email])
    if @user.present?
      PasswordMailer.with(user: @user).reset.deliver_now
    end
    redirect_to root_path, notice: 'If an account with that email was found, we have send a link to reset password'
  end
end
