# frozen_string_literal: true

# The User model instantiates individual users.
class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'address invalid.' },
                    uniqueness: { case_sensitive: false, message: 'address already in use.' }
  validates :password, length: { within: 8..20, message: 'must be between 8-20 characters.' }
  validates :username, uniqueness: { case_sensitive: false, message: 'already in use.' },
                       length: { within: 5..15, message: 'must be between 5-15 characters.'}
  validates :first_name, length: { maximum: 25, message: 'cannot be more than 25 characters.'}
  validates :last_name, length: { maximum: 25, message: 'cannot be more than 25 characters.'}
end
