# frozen_string_literal: true

# The AboutController handles requests for the About page(s).
class AboutController < ApplicationController
  before_action :require_current_user

  def index; end
end
