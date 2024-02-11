class List < ApplicationRecord
  belongs_to :board

  VALID_STATUSES = ['active', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end
