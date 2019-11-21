class Restaurant < ApplicationRecord
  CATEGORY = %w(chinese italian japanese french belgian)
  validates :name, presence: true
  validates :category, inclusion: { in: %w() }
end
