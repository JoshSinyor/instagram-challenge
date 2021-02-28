# frozen_string_literal: true

# The User model instantiates individual users.
class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "E-mail address invalid." }
  validates :email, uniqueness: { case_sensitive: false, message: "E-mail address already in use." }
  validates :username, uniqueness: { case_sensitive: false, message: "Username already in use." }
end
