# frozen_string_literal: true

# The ApplicationController handles overarching requests for all other controllers.
class ApplicationController < ActionController::Base
  add_flash_types :login, :logout
end
