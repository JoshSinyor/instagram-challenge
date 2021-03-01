# frozen_string_literal: true

# The SessionsController handles login status.
class SessionsController < ApplicationController
  # def new
  # end

  def create
    redirect_to root_path, notice: "Signed in."
  end

  def destroy;
    session[:user_id] = nil
    redirect_to root_path, notice: "Signed out."
  end
end
