# frozen_string_literal: true

# The MainController handles requests for the Main page(s).
class MainController < ApplicationController
  def index;
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end
end
