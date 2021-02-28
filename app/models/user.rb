# frozen_string_literal: true

# The User model instantiates individual users.
class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true
end
