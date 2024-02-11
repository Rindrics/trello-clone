class Board < ApplicationRecord
  has_many :lists

  validates :name, presence: true

  VALID_STATUSES = ['active', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }
end
