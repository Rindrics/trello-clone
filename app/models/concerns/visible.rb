module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['active', 'archived']

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  def archived?
    status == 'archived'
  end
end
