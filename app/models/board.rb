class Board < ApplicationRecord
  include Visible

  has_many :lists

  validates :name, presence: true
end
