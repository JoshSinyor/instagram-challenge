# frozen_string_literal: true

# The ApplicationController handles overarching requests for all other controllers.
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_current_user

  private

  def set_current_user
    Current.user = User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def require_current_user
    redirect_to root_path, alert: "Please log in first." unless Current.user
  end

  def require_no_current_user
    redirect_to root_path, alert: "Please log out first." if Current.user
  end

end
