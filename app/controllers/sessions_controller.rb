# frozen_string_literal: true

# The SessionsController handles login status.
class SessionsController < ApplicationController
  def destroy;
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out."
  end
end
