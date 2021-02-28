# frozen_string_literal: true

# The RegisterController handles requests for user registrations and page(s).
class RegisterController < ApplicationController
  def new
    @user = User.new
  end
end
