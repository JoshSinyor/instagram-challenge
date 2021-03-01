# frozen_string_literal: true

# The User model instantiates individual users.
class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'E-mail address invalid.' },
                    uniqueness: { case_sensitive: false, message: 'E-mail address already in use.' }
  validates :password, confirmation: { message: 'Passwords do not match.' },
                       length: { within: 8..20, message: 'Password must be between 8-20 characters.' }
  validates :username, uniqueness: { case_sensitive: false, message: 'Username already in use.' }
end
