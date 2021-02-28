# frozen_string_literal: true

# The ApplicationRecord is a Rails default.
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
