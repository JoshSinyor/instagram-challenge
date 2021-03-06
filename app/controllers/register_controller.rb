# frozen_string_literal: true

# The RegisterController handles requests for user registrations and page(s).
class RegisterController < ApplicationController
  before_action :require_no_current_user

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Signed up.'
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :username, :first_name, :last_name,
                                 :pfp_url)
  end
end
